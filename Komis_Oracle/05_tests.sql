-- ############################################################
-- test.sql — testy działania triggerów
-- Projekt: "komis"
-- ############################################################

----------------------------------------------------------------
-- TEST 1: Historia zmian ceny samochodu
-- Mapowanie:
--  - trg_historia_cen
--  - Twój PostgreSQL #1: log_cena_update
--  - Sprawdza: czy po zmianie ceny powstaje wpis w historia_cen
----------------------------------------------------------------

-- Sukces: zmiana ceny -> wpis w historia_cen
UPDATE samochod SET cena = cena + 1000 WHERE id_samochod = 1;
SELECT * FROM historia_cen WHERE id_samochod = 1 ORDER BY data_zmiany DESC;

-- Porażka (brak nowego wpisu): aktualizacja bez zmiany wartości
UPDATE samochod SET cena = cena WHERE id_samochod = 1;
SELECT * FROM historia_cen WHERE id_samochod = 1 ORDER BY data_zmiany DESC;

----------------------------------------------------------------
-- TEST 2: Walidacja transakcji
-- Mapowanie:
--  - trg_val_transakcja_biu
--  - Twój PostgreSQL #2: check_car_ready_for_sale
--  - Wymóg zadania #1: trigger walidacyjny
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
--  - Twój PostgreSQL #3: mark_car_ready_after_delivery
--  - Wymóg zadania #3: spójność pośrednia (agregat)
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
--  - trg_block_delete_samochod
--  - trg_block_delete_klient
--  - Twój PostgreSQL #4: prevent_delete_car_in_transaction
--  - Wymóg zadania #4
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
--  - Wymóg zadania #2 i #5
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
--  - Twój PostgreSQL #5: set_default_end_date
--  - Wymóg zadania #1 (reguła biznesowa)
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
