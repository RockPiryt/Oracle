-- ############################################################
-- 05_tests.sql — testy kluczowych scenariuszy
-- Uruchamiaj po: 01_schema_oracle.sql, 02_data_oracle.sql, 03_pkg_komis.sql, 04_triggers.sql
-- ############################################################

SET SERVEROUTPUT ON;

PROMPT =========================================================
PROMPT TESTY PAKIETU PKG_KOMIS
PROMPT =========================================================

----------------------------------------------------------------
-- PKG TEST 1: Funkcja obliczeniowa (wiek samochodu) – sukces
----------------------------------------------------------------
PROMPT PKG_TEST_1: wiek_samochodu(1)
SELECT pkg_komis.wiek_samochodu(1) AS wiek FROM dual;

----------------------------------------------------------------
-- PKG TEST 2: Funkcja średniej ceny w komisie – sukces (jeśli są dostawy)
----------------------------------------------------------------
PROMPT PKG_TEST_2: srednia_cena_komisu(1)
SELECT pkg_komis.srednia_cena_komisu(1) AS srednia FROM dual;

----------------------------------------------------------------
-- PKG TEST 3: Dostępność auta – sukces
----------------------------------------------------------------
PROMPT PKG_TEST_3: dostepny_do_sprzedazy(1)
SELECT pkg_komis.dostepny_do_sprzedazy(1) AS gotowy_0_1 FROM dual;

----------------------------------------------------------------
-- PKG TEST 4: Dodanie transakcji – sukces (jeśli auto gotowe i FK istnieją)
----------------------------------------------------------------
PROMPT PKG_TEST_4: dodaj_transakcje - sukces
BEGIN
  pkg_komis.dodaj_transakcje('SPRZEDAZ', 1, 1, 1, 1, 1, 0);
  DBMS_OUTPUT.PUT_LINE('OK: dodano transakcje.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('BLAD: ' || SQLERRM);
END;
/

----------------------------------------------------------------
-- PKG TEST 5: Dodanie transakcji – porażka (auto niegotowe)
----------------------------------------------------------------
PROMPT PKG_TEST_5: dodaj_transakcje - porazka (auto niegotowe)
UPDATE samochod SET gotowy_do_sprzedazy = 0 WHERE id_samochod = 1;

BEGIN
  pkg_komis.dodaj_transakcje('SPRZEDAZ', 1, 1, 1, 1, 1, 0);
  DBMS_OUTPUT.PUT_LINE('NIEOCZEKIWANE: transakcja przeszla.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('OCZEKIWANY BLAD: ' || SQLERRM);
END;
/
UPDATE samochod SET gotowy_do_sprzedazy = 1 WHERE id_samochod = 1;

----------------------------------------------------------------
-- PKG TEST 6: Zmiana statusu transakcji – sukces (dla ID=1 lub ostatniego)
----------------------------------------------------------------
PROMPT PKG_TEST_6: zmien_status_transakcji - sukces
BEGIN
  pkg_komis.zmien_status_transakcji(1, 'ANULOWANA');
  DBMS_OUTPUT.PUT_LINE('OK: zmieniono status.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('BLAD: ' || SQLERRM);
END;
/

----------------------------------------------------------------
-- PKG TEST 7: Raport klienta – DBMS_OUTPUT
----------------------------------------------------------------
PROMPT PKG_TEST_7: raport_klienta(1)
BEGIN
  pkg_komis.raport_klienta(1);
END;
/

----------------------------------------------------------------
-- PKG TEST 8: Procedura z kursorem – przecena starych aut
-- Uwaga: uruchomienie zmieni ceny (a trigger historia_cen dopisze wpisy).
----------------------------------------------------------------
PROMPT PKG_TEST_8: przecena_starych_aut(10, 5)
BEGIN
  pkg_komis.przecena_starych_aut(10, 5);
  DBMS_OUTPUT.PUT_LINE('OK: wykonano przecene.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('BLAD: ' || SQLERRM);
END;
/

PROMPT =========================================================
PROMPT TESTY TRIGGEROW (z 04_triggers.sql)
PROMPT =========================================================

----------------------------------------------------------------
-- TEST 1: Historia zmian ceny samochodu
-- Mapowanie:
--  - trg_historia_cen
--  - (Postgres #1) log_cena_update
----------------------------------------------------------------

-- Sukces: zmiana ceny -> wpis w historia_cen
UPDATE samochod SET cena = cena + 1000 WHERE id_samochod = 1;
SELECT * FROM historia_cen WHERE id_samochod = 1 ORDER BY data_zmiany DESC;

-- Porażka (brak nowego wpisu): aktualizacja bez zmiany wartości
UPDATE samochod SET cena = cena WHERE id_samochod = 1;
SELECT * FROM historia_cen WHERE id_samochod = 1 ORDER BY data_zmiany DESC;

----------------------------------------------------------------
-- TEST 2: Walidacja transakcji (trigger)
-- Mapowanie:
--  - trg_val_transakcja_biu
----------------------------------------------------------------

-- Porażka: data transakcji w przyszłości
INSERT INTO kartoteka_transakcji(
  rodzaj, data_transakcji, samochod_w_rozliczeniu,
  id_samochod, id_klient, id_sprzedawca, id_plac, id_faktura
)
VALUES ('SPRZEDAZ', SYSDATE + 10, 0, 1, 1, 1, 1, 1);

-- Porażka: auto niegotowe do sprzedaży
UPDATE samochod SET gotowy_do_sprzedazy = 0 WHERE id_samochod = 1;
INSERT INTO kartoteka_transakcji(
  rodzaj, data_transakcji, samochod_w_rozliczeniu,
  id_samochod, id_klient, id_sprzedawca, id_plac, id_faktura
)
VALUES ('SPRZEDAZ', SYSDATE, 0, 1, 1, 1, 1, 1);

-- Cofnięcie zmiany
UPDATE samochod SET gotowy_do_sprzedazy = 1 WHERE id_samochod = 1;

-- Sukces: poprawna transakcja
INSERT INTO kartoteka_transakcji(
  rodzaj, data_transakcji, samochod_w_rozliczeniu,
  id_samochod, id_klient, id_sprzedawca, id_plac, id_faktura
)
VALUES ('SPRZEDAZ', SYSDATE, 0, 1, 1, 1, 1, 1);

----------------------------------------------------------------
-- TEST 3: Po dostawie auto gotowe + aktualizacja licznika
-- Mapowanie:
--  - trg_after_insert_dostawa, trg_after_delete_dostawa
----------------------------------------------------------------

-- Przygotowanie: auto niegotowe
UPDATE samochod SET gotowy_do_sprzedazy = 0 WHERE id_samochod = 1;

-- Stan początkowy
SELECT gotowy_do_sprzedazy FROM samochod WHERE id_samochod = 1;
SELECT liczba_aut FROM plac WHERE id_plac = 1;

-- Sukces: dostawa ustawia gotowość i zwiększa licznik
INSERT INTO dostawa(
  data_dostawy, kraj_pochodzenia, czy_zarejestrowany, czy_uszkodzony,
  id_plac, id_samochod
)
VALUES (SYSDATE, 'DE', 1, 0, 1, 1);

SELECT gotowy_do_sprzedazy FROM samochod WHERE id_samochod = 1;
SELECT liczba_aut FROM plac WHERE id_plac = 1;

-- Porażka: naruszenie klucza obcego (nieistniejący plac i samochod)
INSERT INTO dostawa(
  data_dostawy, kraj_pochodzenia, czy_zarejestrowany, czy_uszkodzony,
  id_plac, id_samochod
)
VALUES (SYSDATE, 'DE', 1, 0, 999999, 999999);

----------------------------------------------------------------
-- TEST 4: Blokada usuwania powiązanych rekordów
-- Mapowanie:
--  - trg_block_delete_samochod, trg_block_delete_klient
----------------------------------------------------------------

-- Porażka: próba usunięcia auta z transakcją
DELETE FROM samochod WHERE id_samochod = 1;

-- Porażka: próba usunięcia klienta z transakcją
DELETE FROM klient WHERE id_klient = 1;

-- Sukces: klient bez transakcji
INSERT INTO klient(imie, nazwisko, pesel, rodzaj_dokumentu, nr_dokumentu)
VALUES ('Test', 'BezTrans', '99999999999', 'Dowod', 'ABC123');

DELETE FROM klient WHERE pesel = '99999999999';

----------------------------------------------------------------
-- TEST 5: Audyt telefonu klienta + kontekst użytkownika/czasu
-- Mapowanie:
--  - trg_audit_klient_phone
----------------------------------------------------------------

-- Sukces: zmiana telefonu -> wpis do audit_log
UPDATE klient SET telefon = '123456789' WHERE id_klient = 1;
SELECT * FROM audit_log WHERE tabela = 'KLIENT' ORDER BY change_ts DESC;

-- Porażka: brak zmiany -> brak nowego wpisu
UPDATE klient SET telefon = telefon WHERE id_klient = 1;
SELECT * FROM audit_log WHERE tabela = 'KLIENT' ORDER BY change_ts DESC;

----------------------------------------------------------------
-- TEST 6: Walidacja dat ubezpieczenia
-- Mapowanie:
--  - trg_val_ubezpieczenie_bi
----------------------------------------------------------------

-- Sukces: data_konca NULL -> zostaje ustawiona automatycznie
INSERT INTO ubezpieczenie(
  id_samochod, firma_ubezpieczeniowa, nr_polisy,
  data_poczatku, data_konca, koszt
)
VALUES (1, 'PZU', 'POLISA_TEST_OK', DATE '2025-01-01', NULL, 1200);

-- Porażka: data_konca wcześniejsza niż data_poczatku
INSERT INTO ubezpieczenie(
  id_samochod, firma_ubezpieczeniowa, nr_polisy,
  data_poczatku, data_konca, koszt
)
VALUES (1, 'WARTA', 'POLISA_TEST_ERR', DATE '2025-01-01', DATE '2024-12-31', 1200);
