-- 03_tests.sql
-- Testy: VALUE/DEREF, metody, ALTER TYPE, MAP METHOD (sortowanie)
-- Wersja zgodna z LiveSQL

SET SERVEROUTPUT ON

PROMPT === [03] Kontrola liczby rekordow (sanity check) ===
-- OCZEKIWANE: cars=10, klienci=10, evts=15
SELECT COUNT(*) AS cars FROM car_tab;
SELECT COUNT(*) AS klienci FROM klient_tab;
SELECT COUNT(*) AS evts FROM evt_tab;


PROMPT === [03] (5) Zapytanie 1: lista zdarzen + dane obiektu A i B przez DEREF ===
-- OCZEKIWANE: 15 wierszy (evt_id 101..115), z marka/model, klient, oraz wyliczony koszt.
SELECT
  e.evt_id,
  e.evt_typ,
  TO_CHAR(e.evt_ts,'YYYY-MM-DD') AS dzien,
  DEREF(e.car_ref).marka  AS marka,
  DEREF(e.car_ref).model  AS model,
  DEREF(e.klient_ref).imie AS imie,
  DEREF(e.klient_ref).nazwisko AS nazwisko,
  e.koszt() AS koszt_pln,
  e.to_text() AS opis_evt
FROM evt_tab e
ORDER BY e.evt_id;


PROMPT === [03] (5) Zapytanie 2: agregacja - liczba zdarzen na samochod ===
-- OCZEKIWANE: do 10 wierszy; pokazuje liczbę zdarzeń i sumę kosztów na VIN
SELECT
  DEREF(e.car_ref).vin AS vin,
  DEREF(e.car_ref).marka || ' ' || DEREF(e.car_ref).model AS auto,
  COUNT(*) AS liczba_zdarzen,
  SUM(e.koszt()) AS suma_kosztow_pln
FROM evt_tab e
GROUP BY
  DEREF(e.car_ref).vin,
  DEREF(e.car_ref).marka,
  DEREF(e.car_ref).model
ORDER BY liczba_zdarzen DESC, suma_kosztow_pln DESC;


PROMPT === [03] (5) Zapytanie 3: filtrowanie po atrybucie pobranym przez DEREF ===
-- OCZEKIWANE: tylko zdarzenia dla aut z rokiem produkcji < 2017.
SELECT
  e.evt_id,
  DEREF(e.car_ref).rok_prod AS rok,
  DEREF(e.car_ref).marka AS marka,
  DEREF(e.klient_ref).nazwisko AS klient
FROM evt_tab e
WHERE DEREF(e.car_ref).rok_prod < 2017
ORDER BY e.evt_id;


PROMPT === [03] (5) Uzycie VALUE(alias) - pobranie calego obiektu ===
-- OCZEKIWANE: zwraca obiekty T_CAR; w LiveSQL widoczne kolumny obiektu.
SELECT VALUE(c) AS car_obj
FROM car_tab c
WHERE c.cena_netto >= 65000
ORDER BY c.cena_netto DESC;


PROMPT === [03] (6) Wywolanie metod typu T_CAR ===
-- OCZEKIWANE: opis oraz cena brutto policzona metoda.
SELECT
  c.car_id,
  c.opis() AS opis,
  c.cena_netto,
  c.cena_brutto(0.23) AS cena_brutto_23
FROM car_tab c
ORDER BY c.car_id;


PROMPT === [03] (7) ALTER TYPE: dodanie atrybutu SEGMENT do T_CAR ===
-- Dodanie nowego elementu do typu na istniejacych danych.
ALTER TYPE t_car ADD ATTRIBUTE (segment VARCHAR2(20)) CASCADE;

-- Ustawiamy segment dla aut
UPDATE car_tab c SET c.segment = 'Kompakt' WHERE c.car_id IN (1,3,4,5,8,9,10);
UPDATE car_tab c SET c.segment = 'Premium' WHERE c.car_id IN (6,7);
UPDATE car_tab c SET c.segment = 'Miejski'  WHERE c.car_id IN (2);
COMMIT;

-- OCZEKIWANE: segment jest widoczny na istniejących rekordach.
SELECT c.car_id, c.marka, c.model, c.segment
FROM car_tab c
ORDER BY c.car_id;


PROMPT === [03] (8A) MAP METHOD: sortowanie po obiekcie (ORDER BY VALUE) ===
-- OCZEKIWANE: auta posortowane rosnaco po cena_netto (map_key).
SELECT c.car_id, c.marka, c.model, c.cena_netto
FROM car_tab c
ORDER BY VALUE(c);


PROMPT === [03] Dodatkowy test: dereferencja i metoda na deref ===
-- OCZEKIWANE: 15 wierszy, pokazuje opis auta z metody opis() wywolanej na DEREF.
SELECT
  e.evt_id,
  DEREF(e.car_ref).opis() AS opis_auta,
  DEREF(e.klient_ref).pelna_nazwa() AS klient
FROM evt_tab e
ORDER BY e.evt_id;
