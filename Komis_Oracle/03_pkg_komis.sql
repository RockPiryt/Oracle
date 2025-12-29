-- pakiet (spec + body)
-- =========================================================
-- 03_pkg_komis.sql
-- Pakiet logiki biznesowej dla systemu komisu
-- =========================================================

CREATE OR REPLACE PACKAGE pkg_komis AS
    FUNCTION wiek_samochodu(p_id_samochod IN NUMBER) RETURN NUMBER;

    FUNCTION srednia_cena_komisu(p_id_komis IN NUMBER) RETURN NUMBER;

    -- 1 = dostępny (gotowy_do_sprzedazy=1), 0 = niedostępny
    FUNCTION dostepny_do_sprzedazy(p_id_samochod IN NUMBER) RETURN NUMBER;

    PROCEDURE raport_klienta(
        p_id_klient           IN  NUMBER,
        o_liczba_transakcji   OUT NUMBER,
        o_laczna_wartosc      OUT NUMBER
    );

    -- Opcja A: procedura tylko aktualizuje cenę; historię zapisuje trigger
    PROCEDURE aktualizuj_cene(p_id_samochod IN NUMBER, p_nowa_cena IN NUMBER);
END pkg_komis;
/
SHOW ERRORS;


CREATE OR REPLACE PACKAGE BODY pkg_komis AS

    FUNCTION wiek_samochodu(p_id_samochod IN NUMBER) RETURN NUMBER IS
        v_rocznik NUMBER(4);
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

        RETURN v_srednia; -- może być NULL, jeśli brak aut

    END srednia_cena_komisu;


    FUNCTION dostepny_do_sprzedazy(p_id_samochod IN NUMBER) RETURN NUMBER IS
        v_gotowy NUMBER(1);
    BEGIN
        SELECT gotowy_do_sprzedazy
          INTO v_gotowy
          FROM samochod
         WHERE id_samochod = p_id_samochod;

        IF v_gotowy = 1 THEN
            RETURN 1;
        ELSE
            RETURN 0;
        END IF;

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20011, 'Brak samochodu o id_samochod=' || p_id_samochod);
    END dostepny_do_sprzedazy;


    PROCEDURE raport_klienta(
        p_id_klient           IN  NUMBER,
        o_liczba_transakcji   OUT NUMBER,
        o_laczna_wartosc      OUT NUMBER
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
            RAISE_APPLICATION_ERROR(-20012, 'Błąd raport_klienta: ' || SQLERRM);
    END raport_klienta;


    PROCEDURE aktualizuj_cene(p_id_samochod IN NUMBER, p_nowa_cena IN NUMBER) IS
        v_dummy NUMBER;
    BEGIN
        -- walidacja istnienia auta + blokada rekordu
        SELECT 1
          INTO v_dummy
          FROM samochod
         WHERE id_samochod = p_id_samochod
           FOR UPDATE;

        UPDATE samochod
           SET cena = p_nowa_cena
         WHERE id_samochod = p_id_samochod;

        -- Historia jest logowana przez trigger AFTER UPDATE OF cena

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20013, 'Brak samochodu o id_samochod=' || p_id_samochod);
    END aktualizuj_cene;

END pkg_komis;
/
SHOW ERRORS;
