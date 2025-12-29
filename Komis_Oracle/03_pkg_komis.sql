-- pakiet (spec + body)

-- =========================================================
-- 03_pkg_komis.sql
-- Pakiet z funkcjami biznesowymi dla systemu komisu
-- =========================================================

CREATE OR REPLACE PACKAGE pkg_komis AS
    -- 1) wiek auta (lata)
    FUNCTION wiek_samochodu(p_id_samochod IN NUMBER) RETURN NUMBER;

    -- 2) średnia cena aut w komisie
    FUNCTION srednia_cena_komisu(p_id_komis IN NUMBER) RETURN NUMBER;

    -- 3) dostępność do sprzedaży (1 = tak, 0 = nie)
    FUNCTION dostepny_do_sprzedazy(p_id_samochod IN NUMBER) RETURN NUMBER;

    -- 4) raport klienta: liczba transakcji + łączna wartość (suma cen)
    -- Oracle nie ma "RETURNS TABLE" jak w PG, więc zwrócimy rekord przez OUT.
    PROCEDURE raport_klienta(
        p_id_klient       IN  NUMBER,
        o_liczba_transakcji OUT NUMBER,
        o_laczna_wartosc    OUT NUMBER
    );

    -- 5) aktualizacja ceny + zapis historii
    PROCEDURE aktualizuj_cene(p_id_samochod IN NUMBER, p_nowa_cena IN NUMBER);
END pkg_komis;
/
SHOW ERRORS;


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
            RAISE_APPLICATION_ERROR(-20010, 'Brak samochodu o id_samochod=' || p_id_samochod);
    END wiek_samochodu;


    FUNCTION srednia_cena_komisu(p_id_komis IN NUMBER) RETURN NUMBER IS
        v_srednia NUMBER;
    BEGIN
        SELECT AVG(s.cena)
          INTO v_srednia
          FROM samochod s
          JOIN dostawa d ON s.id_samochod = d.id_samochod
          JOIN plac p    ON d.id_plac     = p.id_plac
         WHERE p.id_komis = p_id_komis;

        RETURN v_srednia; -- może być NULL jeśli brak aut

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            -- AVG bez wierszy zwykle i tak da NULL, ale zostawiamy bez wyjątku
            RETURN NULL;
    END srednia_cena_komisu;


    FUNCTION dostepny_do_sprzedazy(p_id_samochod IN NUMBER) RETURN NUMBER IS
        v_gotowy NUMBER(1);
    BEGIN
        SELECT gotowy_do_sprzedazy
          INTO v_gotowy
          FROM samochod
         WHERE id_samochod = p_id_samochod;

        -- normalizacja: tylko 0/1
        IF v_gotowy IS NULL THEN
            RETURN 0;
        ELSIF v_gotowy <> 0 THEN
            RETURN 1;
        ELSE
            RETURN 0;
        END IF;

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20011, 'Brak samochodu o id_samochod=' || p_id_samochod);
    END dostepny_do_sprzedazy;


    PROCEDURE raport_klienta(
        p_id_klient        IN  NUMBER,
        o_liczba_transakcji OUT NUMBER,
        o_laczna_wartosc     OUT NUMBER
    ) IS
    BEGIN
        SELECT COUNT(k.id_transakcja),
               NVL(SUM(s.cena), 0)
          INTO o_liczba_transakcji,
               o_laczna_wartosc
          FROM kartoteka_transakcji k
          JOIN samochod s ON k.id_samochod = s.id_samochod
         WHERE k.id_klient = p_id_klient;

    EXCEPTION
        WHEN OTHERS THEN
            RAISE_APPLICATION_ERROR(-20012, 'Błąd raportu klienta: ' || SQLERRM);
    END raport_klienta;


    PROCEDURE aktualizuj_cene(p_id_samochod IN NUMBER, p_nowa_cena IN NUMBER) IS
        v_stara_cena NUMBER;
    BEGIN
        -- pobierz starą cenę (i zweryfikuj istnienie auta)
        SELECT cena
          INTO v_stara_cena
          FROM samochod
         WHERE id_samochod = p_id_samochod
           FOR UPDATE;

        -- zapis historii
        INSERT INTO historia_cen (id_samochod, stara_cena, nowa_cena)
        VALUES (p_id_samochod, v_stara_cena, p_nowa_cena);

        -- aktualizacja ceny (uruchomi też trigger log_cena_update, jeśli go zostawisz)
        UPDATE samochod
           SET cena = p_nowa_cena
         WHERE id_samochod = p_id_samochod;

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20013, 'Brak samochodu o id_samochod=' || p_id_samochod);
    END aktualizuj_cene;

END pkg_komis;
/
SHOW ERRORS;
