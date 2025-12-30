-- ############################################################
-- 03_pkg_komis.sql — pakiet PL/SQL (spec + body)
-- Projekt: "komis"
-- ############################################################

CREATE OR REPLACE PACKAGE pkg_komis AS
  ----------------------------------------------------------------
  -- (1) Procedura dodająca obiekt biznesowy:
  --     Dodanie transakcji (walidacje + RAISE_APPLICATION_ERROR)
  ----------------------------------------------------------------
  PROCEDURE dodaj_transakcje(
    p_rodzaj        IN VARCHAR2,
    p_id_samochod   IN NUMBER,
    p_id_klient     IN NUMBER,
    p_id_sprzedawca IN NUMBER,
    p_id_plac       IN NUMBER,
    p_id_faktura    IN NUMBER,
    p_samochod_w_rozliczeniu IN NUMBER DEFAULT 0
  );

  ----------------------------------------------------------------
  -- (2) Procedura zmieniająca status:
  --     Zmiana "rodzaj" jako status (np. SPRZEDAZ/ANULOWANA/ZAMKNIETA)
  ----------------------------------------------------------------
  PROCEDURE zmien_status_transakcji(
    p_id_transakcja IN NUMBER,
    p_nowystatus    IN VARCHAR2
  );

  ----------------------------------------------------------------
  -- (3) Funkcja obliczeniowa:
  --     Wiek samochodu (odpowiednik Twojej funkcji z Postgresa)
  ----------------------------------------------------------------
  FUNCTION wiek_samochodu(p_id_samochod IN NUMBER) RETURN NUMBER;

  ----------------------------------------------------------------
  -- (4) Procedura raportowa:
  --     Raport klienta przez DBMS_OUTPUT (liczba transakcji + suma)
  ----------------------------------------------------------------
  PROCEDURE raport_klienta(p_id_klient IN NUMBER);

  ----------------------------------------------------------------
  -- (5) Procedura z kur­sorem (wsadowa):
  --     Przecena aut starszych niż X lat o Y%
  ----------------------------------------------------------------
  PROCEDURE przecena_starych_aut(p_lata IN NUMBER, p_procent IN NUMBER);

  ----------------------------------------------------------------
  -- Dodatkowo (maks. wykorzystanie Twoich funkcji):
  -- Średnia cena aut w komisie (Twoja #2)
  ----------------------------------------------------------------
  FUNCTION srednia_cena_komisu(p_id_komis IN NUMBER) RETURN NUMBER;

  ----------------------------------------------------------------
  -- Dodatkowo:
  -- Dostępność auta (Twoja #3) jako NUMBER(1) 0/1 (Oracle nie ma BOOLEAN w SQL)
  ----------------------------------------------------------------
  FUNCTION dostepny_do_sprzedazy(p_id_samochod IN NUMBER) RETURN NUMBER;

  ----------------------------------------------------------------
  -- Dodatkowo:
  -- Aktualizacja ceny (Twoja #5) — u nas historia jest też triggerem,
  -- ale funkcja/procedura nadal jest użyteczna jako logika aplikacyjna.
  ----------------------------------------------------------------
  PROCEDURE aktualizuj_cene(p_id_samochod IN NUMBER, p_nowa_cena IN NUMBER);

END pkg_komis;
/
SHOW ERRORS;

-- ============================================================

CREATE OR REPLACE PACKAGE BODY pkg_komis AS

  FUNCTION wiek_samochodu(p_id_samochod IN NUMBER) RETURN NUMBER IS
    v_rocznik NUMBER;
  BEGIN
    SELECT rocznik
    INTO v_rocznik
    FROM samochod
    WHERE id_samochod = p_id_samochod;

    RETURN EXTRACT(YEAR FROM SYSDATE) - v_rocznik;

  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RAISE_APPLICATION_ERROR(-20101, 'wiek_samochodu: Nie istnieje samochód o podanym ID.');
  END wiek_samochodu;


  FUNCTION srednia_cena_komisu(p_id_komis IN NUMBER) RETURN NUMBER IS
    v_avg NUMBER;
  BEGIN
    SELECT AVG(s.cena)
    INTO v_avg
    FROM samochod s
    JOIN dostawa d ON d.id_samochod = s.id_samochod
    JOIN plac p    ON p.id_plac = d.id_plac
    WHERE p.id_komis = p_id_komis;

    RETURN v_avg;

  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RETURN NULL; -- brak danych
  END srednia_cena_komisu;


  FUNCTION dostepny_do_sprzedazy(p_id_samochod IN NUMBER) RETURN NUMBER IS
    v_ready NUMBER(1);
  BEGIN
    SELECT gotowy_do_sprzedazy
    INTO v_ready
    FROM samochod
    WHERE id_samochod = p_id_samochod;

    RETURN v_ready;

  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RAISE_APPLICATION_ERROR(-20102, 'dostepny_do_sprzedazy: Nie istnieje samochód o podanym ID.');
  END dostepny_do_sprzedazy;


  PROCEDURE aktualizuj_cene(p_id_samochod IN NUMBER, p_nowa_cena IN NUMBER) IS
    v_old NUMBER;
  BEGIN
    IF p_nowa_cena <= 0 THEN
      RAISE_APPLICATION_ERROR(-20103, 'aktualizuj_cene: Nowa cena musi być > 0.');
    END IF;

    SELECT cena INTO v_old
    FROM samochod
    WHERE id_samochod = p_id_samochod
    FOR UPDATE;

    -- Aktualizacja ceny (historia_cen będzie dopisana również triggerem trg_historia_cen)
    UPDATE samochod
    SET cena = p_nowa_cena
    WHERE id_samochod = p_id_samochod;

  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RAISE_APPLICATION_ERROR(-20104, 'aktualizuj_cene: Nie istnieje samochód o podanym ID.');
  END aktualizuj_cene;


  PROCEDURE dodaj_transakcje(
    p_rodzaj        IN VARCHAR2,
    p_id_samochod   IN NUMBER,
    p_id_klient     IN NUMBER,
    p_id_sprzedawca IN NUMBER,
    p_id_plac       IN NUMBER,
    p_id_faktura    IN NUMBER,
    p_samochod_w_rozliczeniu IN NUMBER DEFAULT 0
  ) IS
    v_ready NUMBER(1);
  BEGIN
    -- Walidacje biznesowe
    IF p_rodzaj IS NULL OR LENGTH(TRIM(p_rodzaj)) = 0 THEN
      RAISE_APPLICATION_ERROR(-20110, 'dodaj_transakcje: Rodzaj/status jest wymagany.');
    END IF;

    IF p_samochod_w_rozliczeniu NOT IN (0,1) THEN
      RAISE_APPLICATION_ERROR(-20111, 'dodaj_transakcje: samochod_w_rozliczeniu musi być 0/1.');
    END IF;

    -- Sprawdzenie gotowości auta (jak w Twojej funkcji/check trigger)
    SELECT gotowy_do_sprzedazy
    INTO v_ready
    FROM samochod
    WHERE id_samochod = p_id_samochod;

    IF v_ready = 0 THEN
      RAISE_APPLICATION_ERROR(-20112, 'dodaj_transakcje: Samochód nie jest gotowy do sprzedaży.');
    END IF;

    INSERT INTO kartoteka_transakcji(
      rodzaj, data_transakcji, samochod_w_rozliczeniu,
      id_samochod, id_klient, id_sprzedawca, id_plac, id_faktura
    )
    VALUES(
      p_rodzaj, SYSDATE, p_samochod_w_rozliczeniu,
      p_id_samochod, p_id_klient, p_id_sprzedawca, p_id_plac, p_id_faktura
    );

  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RAISE_APPLICATION_ERROR(-20113, 'dodaj_transakcje: Nie znaleziono powiązanego rekordu (np. samochód).');
    WHEN DUP_VAL_ON_INDEX THEN
      RAISE_APPLICATION_ERROR(-20114, 'dodaj_transakcje: Duplikat (naruszenie unikalności).');
    WHEN OTHERS THEN
      RAISE_APPLICATION_ERROR(-20115, 'dodaj_transakcje: Błąd: ' || SQLERRM);
  END dodaj_transakcje;


  PROCEDURE zmien_status_transakcji(
    p_id_transakcja IN NUMBER,
    p_nowystatus    IN VARCHAR2
  ) IS
  BEGIN
    IF p_nowystatus IS NULL OR LENGTH(TRIM(p_nowystatus)) = 0 THEN
      RAISE_APPLICATION_ERROR(-20120, 'zmien_status_transakcji: Nowy status jest wymagany.');
    END IF;

    UPDATE kartoteka_transakcji
    SET rodzaj = p_nowystatus
    WHERE id_transakcja = p_id_transakcja;

    IF SQL%ROWCOUNT = 0 THEN
      RAISE_APPLICATION_ERROR(-20121, 'zmien_status_transakcji: Nie znaleziono transakcji o podanym ID.');
    END IF;

  EXCEPTION
    WHEN OTHERS THEN
      RAISE_APPLICATION_ERROR(-20122, 'zmien_status_transakcji: Błąd: ' || SQLERRM);
  END zmien_status_transakcji;


  PROCEDURE raport_klienta(p_id_klient IN NUMBER) IS
    v_cnt NUMBER;
    v_sum NUMBER;
  BEGIN
    SELECT COUNT(*), NVL(SUM(s.cena), 0)
    INTO v_cnt, v_sum
    FROM kartoteka_transakcji k
    JOIN samochod s ON s.id_samochod = k.id_samochod
    WHERE k.id_klient = p_id_klient;

    DBMS_OUTPUT.PUT_LINE('--- RAPORT KLIENTA ---');
    DBMS_OUTPUT.PUT_LINE('ID klienta: ' || p_id_klient);
    DBMS_OUTPUT.PUT_LINE('Liczba transakcji: ' || v_cnt);
    DBMS_OUTPUT.PUT_LINE('Łączna wartość: ' || v_sum);

  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE('Brak danych dla klienta: ' || p_id_klient);
  END raport_klienta;


  PROCEDURE przecena_starych_aut(p_lata IN NUMBER, p_procent IN NUMBER) IS
    CURSOR c_auta IS
      SELECT id_samochod, cena, rocznik
      FROM samochod
      WHERE (EXTRACT(YEAR FROM SYSDATE) - rocznik) >= p_lata;

  BEGIN
    IF p_lata < 0 THEN
      RAISE_APPLICATION_ERROR(-20130, 'przecena_starych_aut: p_lata nie może być ujemne.');
    END IF;

    IF p_procent <= 0 OR p_procent >= 100 THEN
      RAISE_APPLICATION_ERROR(-20131, 'przecena_starych_aut: p_procent musi być w (0,100).');
    END IF;

    FOR rec IN c_auta LOOP
      UPDATE samochod
      SET cena = ROUND(cena * (1 - p_procent/100), 2)
      WHERE id_samochod = rec.id_samochod;
    END LOOP;

  EXCEPTION
    WHEN OTHERS THEN
      RAISE_APPLICATION_ERROR(-20132, 'przecena_starych_aut: Błąd: ' || SQLERRM);
  END przecena_starych_aut;

END pkg_komis;
/
SHOW ERRORS;
