 -- skrypt testowy uruchamiający najważniejsze scenariusze

 -- =========================================================
-- 05_tests.sql
-- Testy pakietu + triggerów (scenariusze pozytywne i negatywne)
-- =========================================================

SET SERVEROUTPUT ON;
WHENEVER SQLERROR CONTINUE;

PROMPT ======================================================
PROMPT 0) Informacje wstępne (liczności)
PROMPT ======================================================

SELECT COUNT(*) AS komis_cnt FROM komis;
SELECT COUNT(*) AS plac_cnt FROM plac;
SELECT COUNT(*) AS samochod_cnt FROM samochod;
SELECT COUNT(*) AS dostawa_cnt FROM dostawa;
SELECT COUNT(*) AS klient_cnt FROM klient;
SELECT COUNT(*) AS sprzedawca_cnt FROM sprzedawca;
SELECT COUNT(*) AS transakcje_cnt FROM kartoteka_transakcji;
SELECT COUNT(*) AS historia_cnt FROM historia_cen;
SELECT COUNT(*) AS ubezpieczenie_cnt FROM ubezpieczenie;


PROMPT ======================================================
PROMPT 1) Testy pakietu: wiek_samochodu
PROMPT ======================================================

DECLARE
  v_id NUMBER;
  v_wiek NUMBER;
BEGIN
  SELECT MIN(id_samochod) INTO v_id FROM samochod;

  v_wiek := pkg_komis.wiek_samochodu(v_id);
  DBMS_OUTPUT.PUT_LINE('wiek_samochodu('||v_id||') = '||v_wiek);

  -- Negatywny: nieistniejące ID
  BEGIN
    v_wiek := pkg_komis.wiek_samochodu(-999999);
    DBMS_OUTPUT.PUT_LINE('NIE POWINNO SIĘ WYŚWIETLIĆ: '||v_wiek);
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('OK (oczekiwany błąd): '||SQLERRM);
  END;
END;
/
-- kontrolnie: rocznik i wyliczenie
SELECT id_samochod, rocznik, EXTRACT(YEAR FROM SYSDATE) - rocznik AS wiek_calc
FROM samochod
WHERE id_samochod = (SELECT MIN(id_samochod) FROM samochod);


PROMPT ======================================================
PROMPT 2) Testy pakietu: srednia_cena_komisu
PROMPT ======================================================

DECLARE
  v_id_komis NUMBER;
  v_avg NUMBER;
BEGIN
  SELECT MIN(id_komis) INTO v_id_komis FROM komis;

  v_avg := pkg_komis.srednia_cena_komisu(v_id_komis);
  DBMS_OUTPUT.PUT_LINE('srednia_cena_komisu('||v_id_komis||') = '||NVL(TO_CHAR(v_avg),'NULL'));
END;
/
-- weryfikacja SQL (powinno dać to samo)
SELECT p.id_komis, AVG(s.cena) AS avg_cena_sql
FROM samochod s
JOIN dostawa d ON s.id_samochod = d.id_samochod
JOIN plac p ON d.id_plac = p.id_plac
WHERE p.id_komis = (SELECT MIN(id_komis) FROM komis)
GROUP BY p.id_komis;


PROMPT ======================================================
PROMPT 3) Testy pakietu: dostepny_do_sprzedazy (0/1)
PROMPT ======================================================

DECLARE
  v_id_ready NUMBER;
  v_id_not_ready NUMBER;
  v_res NUMBER;
BEGIN
  -- auto gotowe
  SELECT MIN(id_samochod) INTO v_id_ready FROM samochod WHERE gotowy_do_sprzedazy = 1;
  v_res := pkg_komis.dostepny_do_sprzedazy(v_id_ready);
  DBMS_OUTPUT.PUT_LINE('dostepny_do_sprzedazy(ready='||v_id_ready||')='||v_res);

  -- auto niegotowe (jeśli występuje w danych)
  BEGIN
    SELECT MIN(id_samochod) INTO v_id_not_ready FROM samochod WHERE gotowy_do_sprzedazy = 0;
    v_res := pkg_komis.dostepny_do_sprzedazy(v_id_not_ready);
    DBMS_OUTPUT.PUT_LINE('dostepny_do_sprzedazy(not_ready='||v_id_not_ready||')='||v_res);
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE('Brak aut z gotowy_do_sprzedazy=0 w danych – pomijam ten fragment.');
  END;

  -- Negatywny: nieistniejące ID
  BEGIN
    v_res := pkg_komis.dostepny_do_sprzedazy(-999999);
    DBMS_OUTPUT.PUT_LINE('NIE POWINNO SIĘ WYŚWIETLIĆ: '||v_res);
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('OK (oczekiwany błąd): '||SQLERRM);
  END;

END;
/
SELECT id_samochod, gotowy_do_sprzedazy FROM samochod
WHERE id_samochod IN (
  (SELECT MIN(id_samochod) FROM samochod WHERE gotowy_do_sprzedazy=1),
  (SELECT MIN(id_samochod) FROM samochod WHERE gotowy_do_sprzedazy=0)
);


PROMPT ======================================================
PROMPT 4) Testy pakietu: raport_klienta
PROMPT ======================================================

DECLARE
  v_id NUMBER;
  v_cnt NUMBER;
  v_sum NUMBER;
BEGIN
  SELECT MIN(id_klient) INTO v_id FROM klient;

  pkg_komis.raport_klienta(v_id, v_cnt, v_sum);
  DBMS_OUTPUT.PUT_LINE('raport_klienta('||v_id||'): transakcje='||v_cnt||', suma='||v_sum);

  -- Porównanie z SQL
  DECLARE
    v_cnt2 NUMBER;
    v_sum2 NUMBER;
  BEGIN
    SELECT COUNT(k.id_transakcja), NVL(SUM(s.cena),0)
      INTO v_cnt2, v_sum2
      FROM kartoteka_transakcji k
      JOIN samochod s ON k.id_samochod=s.id_samochod
     WHERE k.id_klient=v_id;

    DBMS_OUTPUT.PUT_LINE('SQL check: transakcje='||v_cnt2||', suma='||v_sum2);
  END;

END;
/


PROMPT ======================================================
PROMPT 5) Testy pakietu + trigger: aktualizuj_cene + historia_cen (Opcja A)
PROMPT ======================================================

DECLARE
  v_id NUMBER;
  v_old NUMBER;
  v_new NUMBER;
  v_hist_before NUMBER;
  v_hist_after NUMBER;
BEGIN
  -- bierz auto, dla którego na pewno istnieje rekord
  SELECT MIN(id_samochod) INTO v_id FROM samochod;

  SELECT cena INTO v_old FROM samochod WHERE id_samochod=v_id;
  SELECT COUNT(*) INTO v_hist_before FROM historia_cen WHERE id_samochod=v_id;

  v_new := v_old + 111.11;

  SAVEPOINT sp_cena;

  pkg_komis.aktualizuj_cene(v_id, v_new);

  -- weryfikacja ceny
  DECLARE v_c NUMBER;
  BEGIN
    SELECT cena INTO v_c FROM samochod WHERE id_samochod=v_id;
    DBMS_OUTPUT.PUT_LINE('Cena przed='||v_old||', po='||v_c);
  END;

  -- weryfikacja audytu ceny (trigger)
  SELECT COUNT(*) INTO v_hist_after FROM historia_cen WHERE id_samochod=v_id;

  DBMS_OUTPUT.PUT_LINE('Historia cen przed='||v_hist_before||', po='||v_hist_after);

  IF v_hist_after = v_hist_before + 1 THEN
    DBMS_OUTPUT.PUT_LINE('OK: trigger dopisał 1 rekord do historia_cen.');
  ELSE
    DBMS_OUTPUT.PUT_LINE('UWAGA: liczba wpisów historii nie zgadza się z oczekiwaniem (+1).');
  END IF;

  -- pokaż ostatni wpis historii
  FOR r IN (
    SELECT id_historia, stara_cena, nowa_cena, data_zmiany
    FROM historia_cen
    WHERE id_samochod=v_id
    ORDER BY data_zmiany DESC
    FETCH FIRST 1 ROWS ONLY
  ) LOOP
    DBMS_OUTPUT.PUT_LINE('Ostatnia historia: id_hist='||r.id_historia||', stara='||r.stara_cena||', nowa='||r.nowa_cena);
  END LOOP;

  -- Sprzątanie po teście
  ROLLBACK TO sp_cena;
END;
/
-- po rollback: cena wróci
SELECT id_samochod, cena FROM samochod
WHERE id_samochod = (SELECT MIN(id_samochod) FROM samochod);


PROMPT ======================================================
PROMPT 6) Trigger: blokada sprzedaży gdy auto niegotowe
PROMPT ======================================================

DECLARE
  v_id_sam NUMBER;
  v_id_kl NUMBER;
  v_id_spr NUMBER;
  v_id_plac NUMBER;
  v_id_fak NUMBER;
BEGIN
  -- wybierz dowolne istniejące FK
  SELECT MIN(id_klient) INTO v_id_kl FROM klient;
  SELECT MIN(id_sprzedawca) INTO v_id_spr FROM sprzedawca;
  SELECT MIN(id_plac) INTO v_id_plac FROM plac;
  SELECT MIN(id_faktura) INTO v_id_fak FROM faktura;

  -- znajdź auto i ustaw jako niegotowe (na potrzeby testu)
  SELECT MIN(id_samochod) INTO v_id_sam FROM samochod;

  SAVEPOINT sp_sprzedaz;

  UPDATE samochod SET gotowy_do_sprzedazy = 0 WHERE id_samochod = v_id_sam;

  -- próba INSERT sprzedaży do kartoteka_transakcji ma się wywalić
  BEGIN
    INSERT INTO kartoteka_transakcji(
      rodzaj, data_transakcji, samochod_w_rozliczeniu, uwagi,
      id_samochod, id_klient, id_sprzedawca, id_plac, id_faktura
    ) VALUES (
      'sprzedaż', SYSDATE, 0, 'TEST: blokada sprzedaży gdy niegotowy',
      v_id_sam, v_id_kl, v_id_spr, v_id_plac, v_id_fak
    );

    DBMS_OUTPUT.PUT_LINE('NIE POWINNO SIĘ UDAĆ: insert sprzedaży dla niegotowego auta przeszedł.');

  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('OK (oczekiwany błąd triggera): '||SQLERRM);
  END;

  ROLLBACK TO sp_sprzedaz;
END;
/

PROMPT ======================================================
PROMPT 7) Trigger: AFTER INSERT dostawa -> auto ustawione jako gotowe
PROMPT ======================================================

DECLARE
  v_id_sam NUMBER;
  v_id_plac NUMBER;
  v_state NUMBER(1);
BEGIN
  SELECT MIN(id_samochod) INTO v_id_sam FROM samochod;
  SELECT MIN(id_plac) INTO v_id_plac FROM plac;

  SAVEPOINT sp_dostawa;

  -- ustaw jako niegotowe
  UPDATE samochod SET gotowy_do_sprzedazy=0 WHERE id_samochod=v_id_sam;

  INSERT INTO dostawa(data_dostawy, kraj_pochodzenia, czy_zarejestrowany, czy_uszkodzony, id_plac, id_samochod)
  VALUES (SYSDATE, 'Polska', 1, 0, v_id_plac, v_id_sam);

  SELECT gotowy_do_sprzedazy INTO v_state FROM samochod WHERE id_samochod=v_id_sam;

  DBMS_OUTPUT.PUT_LINE('Po INSERT dostawa gotowy_do_sprzedazy='||v_state||' (oczekiwane 1)');

  ROLLBACK TO sp_dostawa;
END;
/

PROMPT ======================================================
PROMPT 8) Trigger: BEFORE DELETE samochod -> blokada jeśli powiązany z transakcją
PROMPT ======================================================

DECLARE
  v_id_sam NUMBER;
BEGIN
  -- weź auto powiązane z transakcją
  SELECT MIN(id_samochod) INTO v_id_sam FROM kartoteka_transakcji WHERE id_samochod IS NOT NULL;

  SAVEPOINT sp_del;

  BEGIN
    DELETE FROM samochod WHERE id_samochod=v_id_sam;
    DBMS_OUTPUT.PUT_LINE('NIE POWINNO SIĘ UDAĆ: usunięto auto powiązane z transakcją.');
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('OK (oczekiwany błąd blokady delete): '||SQLERRM);
  END;

  ROLLBACK TO sp_del;
END;
/

PROMPT ======================================================
PROMPT 9) Trigger: BEFORE INSERT ubezpieczenie -> ustaw data_konca jeśli NULL
PROMPT ======================================================

DECLARE
  v_id_sam NUMBER;
BEGIN
  SELECT MIN(id_samochod) INTO v_id_sam FROM samochod;

  SAVEPOINT sp_ubez;

  -- UWAGA: w Twoim schemacie data_konca jest NOT NULL.
  -- Żeby test miał sens, trigger musi działać w ORACLE jako :NEW.data_konca := :NEW.data_poczatku + 365;
  -- ale kolumna ma NOT NULL, więc musisz pozwolić na wstawienie NULL w INSERT (trigger ustawi przed zapisem).
  -- To zadziała tylko jeśli w INSERT jawnie dasz NULL, a trigger jest BEFORE INSERT i ustawia :NEW.data_konca.

  INSERT INTO ubezpieczenie(
    id_samochod, firma_ubezpieczeniowa, nr_polisy, data_poczatku, data_konca, koszt
  ) VALUES (
    v_id_sam, 'TEST_U', 'TEST_POL_'||TO_CHAR(DBMS_RANDOM.VALUE(100000,999999)),
    TRUNC(SYSDATE), NULL, 999.99
  );

  -- pokaż ostatni wstawiony rekord
  FOR r IN (
    SELECT id_ubezpieczenie, data_poczatku, data_konca
    FROM ubezpieczenie
    WHERE id_samochod=v_id_sam
    ORDER BY id_ubezpieczenie DESC
    FETCH FIRST 1 ROWS ONLY
  ) LOOP
    DBMS_OUTPUT.PUT_LINE('Ubezpieczenie testowe: start='||TO_CHAR(r.data_poczatku,'YYYY-MM-DD')||
                         ', koniec='||TO_CHAR(r.data_konca,'YYYY-MM-DD'));
  END LOOP;

  ROLLBACK TO sp_ubez;
END;
/

PROMPT ======================================================
PROMPT 10) Podsumowanie: przykładowe sanity-check po testach
PROMPT ======================================================

-- Nic nie powinno zostać trwale zmienione przez testy (rollback do savepointów)
SELECT COUNT(*) AS historia_cnt_after FROM historia_cen;
SELECT COUNT(*) AS dostawa_cnt_after FROM dostawa;
SELECT COUNT(*) AS transakcje_cnt_after FROM kartoteka_transakcji;
SELECT COUNT(*) AS ubezpieczenie_cnt_after FROM ubezpieczenie;
