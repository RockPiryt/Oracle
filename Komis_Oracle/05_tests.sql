
SET SERVEROUTPUT ON;


-- USTALENIE POPRAWNYCH ID (żeby testy nie zależały od tego czy istnieje ID=1)
COLUMN v_samochod_id NEW_VALUE v_samochod_id;
COLUMN v_klient_id   NEW_VALUE v_klient_id;
COLUMN v_sprzed_id   NEW_VALUE v_sprzed_id;
COLUMN v_plac_id     NEW_VALUE v_plac_id;

-- Bierzemy pierwsze dostępne rekordy z tabel (minimum do testów).
SELECT MIN(id_samochod)  v_samochod_id FROM samochod;
SELECT MIN(id_klient)    v_klient_id   FROM klient;
SELECT MIN(id_sprzedawca) v_sprzed_id  FROM sprzedawca;
SELECT MIN(id_plac)      v_plac_id     FROM plac;


-- PODSTAWOWA KONTROLA DANYCH I RELACJI
-- A1: Liczba rekordów w każdej tabeli
SELECT 'KOMIS' AS tabela, COUNT(*) AS liczba FROM komis
UNION ALL SELECT 'PLAC', COUNT(*) FROM plac
UNION ALL SELECT 'SAMOCHOD', COUNT(*) FROM samochod
UNION ALL SELECT 'DOSTAWA', COUNT(*) FROM dostawa
UNION ALL SELECT 'SPRZEDAWCA', COUNT(*) FROM sprzedawca
UNION ALL SELECT 'FAKTURA', COUNT(*) FROM faktura
UNION ALL SELECT 'KLIENT', COUNT(*) FROM klient
UNION ALL SELECT 'KARTOTEKA_TRANSAKCJI', COUNT(*) FROM kartoteka_transakcji
UNION ALL SELECT 'HISTORIA_CEN', COUNT(*) FROM historia_cen
UNION ALL SELECT 'UBEZPIECZENIE', COUNT(*) FROM ubezpieczenie
ORDER BY 1;


-- A2: JOIN komis → plac (sprawdzenie FK plac.id_komis → komis.id_komis)
SELECT k.id_komis, k.nazwa, k.miasto,
       p.id_plac, p.miejscowosc, p.ulica, p.nr_dzialki
FROM komis k
JOIN plac p ON p.id_komis = k.id_komis
ORDER BY k.id_komis, p.id_plac;

-- A3: JOIN plac → dostawa → samochod (sprawdzenie powiązań dostaw z placem i samochodem)
SELECT p.id_plac, p.miejscowosc,
       d.id_dostawa, d.data_dostawy, d.kraj_pochodzenia,
       s.id_samochod, s.marka, s.model, s.nr_vin
FROM plac p
JOIN dostawa d   ON d.id_plac = p.id_plac
JOIN samochod s  ON s.id_samochod = d.id_samochod
ORDER BY d.data_dostawy DESC;


--B) TESTY PAKIETU PKG_KOMIS
-- B1: Funkcja wiek_samochodu() – oczekiwany wynik: liczba lat
PROMPT PKG_TEST_1: wiek_samochodu(&v_samochod_id)
SELECT pkg_komis.wiek_samochodu(&v_samochod_id) AS wiek FROM dual;

-- B2: Funkcja srednia_cena_komisu() – oczekiwany wynik: średnia cena (NUMBER)
PROMPT PKG_TEST_2: srednia_cena_komisu(1)
SELECT pkg_komis.srednia_cena_komisu(1) AS srednia FROM dual;

-- B3: Funkcja dostepny_do_sprzedazy() – oczekiwany wynik: 0/1
PROMPT PKG_TEST_3: dostepny_do_sprzedazy(&v_samochod_id)
SELECT pkg_komis.dostepny_do_sprzedazy(&v_samochod_id) AS gotowy_0_1 FROM dual;

-- B4: Procedura dodaj_transakcje() – sukces (w DBMS_OUTPUT ma być "OK")
PROMPT PKG_TEST_4: dodaj_transakcje - sukces
BEGIN
  pkg_komis.dodaj_transakcje('SPRZEDAZ', &v_samochod_id, &v_klient_id, &v_sprzed_id, &v_plac_id, 1, 0);
  DBMS_OUTPUT.PUT_LINE('OK: dodano transakcje.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('BLAD: ' || SQLERRM);
END;
/
-- Potwierdzenie: ostatnie transakcje
SELECT * FROM kartoteka_transakcji
ORDER BY id_transakcja DESC FETCH FIRST 5 ROWS ONLY;

-- B5: Procedura dodaj_transakcje() – porażka, gdy auto niegotowe (ma być błąd)
PROMPT PKG_TEST_5: dodaj_transakcje - porazka (auto niegotowe)
UPDATE samochod SET gotowy_do_sprzedazy = 0 WHERE id_samochod = &v_samochod_id;

BEGIN
  pkg_komis.dodaj_transakcje('SPRZEDAZ', &v_samochod_id, &v_klient_id, &v_sprzed_id, &v_plac_id, 1, 0);
  DBMS_OUTPUT.PUT_LINE('NIEOCZEKIWANE: transakcja przeszla.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('OCZEKIWANY BLAD: ' || SQLERRM);
END;
/
-- Cofnięcie: przywracamy gotowość auta po teście negatywnym
UPDATE samochod SET gotowy_do_sprzedazy = 1 WHERE id_samochod = &v_samochod_id;

-- B6: Zmiana statusu transakcji – bierzemy ostatnią transakcję i zmieniamy status
PROMPT PKG_TEST_6: zmien_status_transakcji - sukces (ostatnia transakcja)
COLUMN v_last_trans NEW_VALUE v_last_trans;
SELECT MAX(id_transakcja) AS v_last_trans FROM kartoteka_transakcji;

BEGIN
  pkg_komis.zmien_status_transakcji(&v_last_trans, 'ANULOWANA');
  DBMS_OUTPUT.PUT_LINE('OK: zmieniono status.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('BLAD: ' || SQLERRM);
END;
/
-- Potwierdzenie: transakcja po zmianie
SELECT id_transakcja, rodzaj, data_transakcji
FROM kartoteka_transakcji
WHERE id_transakcja = &v_last_trans;

-- B7: Raport klienta – wynik w DBMS_OUTPUT 
PROMPT PKG_TEST_7: raport_klienta(&v_klient_id)
BEGIN
  pkg_komis.raport_klienta(&v_klient_id);
END;
/

-- B8: Przecena starych aut – zmienia ceny, a trigger dopisuje historia_cen
PROMPT PKG_TEST_8: przecena_starych_aut(10, 5)
BEGIN
  pkg_komis.przecena_starych_aut(10, 5);
  DBMS_OUTPUT.PUT_LINE('OK: wykonano przecene.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('BLAD: ' || SQLERRM);
END;
/
-- Potwierdzenie: świeże wpisy w historii cen
SELECT * FROM historia_cen
ORDER BY data_zmiany DESC FETCH FIRST 10 ROWS ONLY;


-- C) TESTY TRIGGEROW
-- C1: trg_historia_cen – sukces: zmiana ceny -> nowy wpis w historia_cen
PROMPT TEST_1: trg_historia_cen - sukces
UPDATE samochod SET cena = cena + 1000 WHERE id_samochod = &v_samochod_id;
SELECT * FROM historia_cen WHERE id_samochod = &v_samochod_id ORDER BY data_zmiany DESC;

-- C2: trg_historia_cen – porażka: brak zmiany ceny -> brak nowego wpisu
PROMPT TEST_1b: trg_historia_cen - brak zmiany
UPDATE samochod SET cena = cena WHERE id_samochod = &v_samochod_id;
SELECT * FROM historia_cen WHERE id_samochod = &v_samochod_id ORDER BY data_zmiany DESC;

-- C3: trg_val_transakcja_biu – przygotowanie faktury (żeby FK id_faktura istniało)
PROMPT TEST_2: przygotowanie faktury do testów transakcji
DECLARE
  v_cnt NUMBER;
BEGIN
  SELECT COUNT(*) INTO v_cnt FROM faktura WHERE nr_faktury = 'TSTTRG001';
  IF v_cnt = 0 THEN
    INSERT INTO faktura(nr_faktury, rabat, sposob_zaplaty, czy_zaplacono)
    VALUES ('TSTTRG001', 0, 'Gotowka', 1);
  END IF;
END;
/
COLUMN v_fact_id NEW_VALUE v_fact_id;
SELECT id_faktura v_fact_id FROM faktura WHERE nr_faktury = 'TSTTRG001';

-- C4: trg_val_transakcja_biu – porażka: data w przyszłości
PROMPT TEST_2a: trg_val_transakcja_biu - porazka (data w przyszlosci)
INSERT INTO kartoteka_transakcji(
  rodzaj, data_transakcji, samochod_w_rozliczeniu,
  id_samochod, id_klient, id_sprzedawca, id_plac, id_faktura
)
VALUES ('SPRZEDAZ', SYSDATE + 10, 0, &v_samochod_id, &v_klient_id, &v_sprzed_id, &v_plac_id, &v_fact_id);

-- C5: trg_val_transakcja_biu – porażka: auto niegotowe do sprzedaży
PROMPT TEST_2b: trg_val_transakcja_biu - porazka (auto niegotowe)
UPDATE samochod SET gotowy_do_sprzedazy = 0 WHERE id_samochod = &v_samochod_id;

INSERT INTO kartoteka_transakcji(
  rodzaj, data_transakcji, samochod_w_rozliczeniu,
  id_samochod, id_klient, id_sprzedawca, id_plac, id_faktura
)
VALUES ('SPRZEDAZ', SYSDATE, 0, &v_samochod_id, &v_klient_id, &v_sprzed_id, &v_plac_id, &v_fact_id);

-- Cofnięcie: przywracamy gotowość auta
UPDATE samochod SET gotowy_do_sprzedazy = 1 WHERE id_samochod = &v_samochod_id;

-- C6: trg_val_transakcja_biu – sukces: poprawna transakcja
PROMPT TEST_2c: trg_val_transakcja_biu - sukces
INSERT INTO kartoteka_transakcji(
  rodzaj, data_transakcji, samochod_w_rozliczeniu,
  id_samochod, id_klient, id_sprzedawca, id_plac, id_faktura
)
VALUES ('SPRZEDAZ', SYSDATE, 0, &v_samochod_id, &v_klient_id, &v_sprzed_id, &v_plac_id, &v_fact_id);

-- Potwierdzenie: ostatnie transakcje po INSERT
SELECT * FROM kartoteka_transakcji
ORDER BY id_transakcja DESC FETCH FIRST 5 ROWS ONLY;

-- C7: trg_after_insert_dostawa – przed: auto niegotowe i licznik aut na placu
PROMPT TEST_3: dostawa - stan przed
UPDATE samochod SET gotowy_do_sprzedazy = 0 WHERE id_samochod = &v_samochod_id;
SELECT gotowy_do_sprzedazy FROM samochod WHERE id_samochod = &v_samochod_id;
SELECT liczba_aut FROM plac WHERE id_plac = &v_plac_id;

-- C8: trg_after_insert_dostawa – sukces: INSERT dostawy ustawia gotowość i zwiększa licznik
PROMPT TEST_3: dostawa - INSERT (sukces)
INSERT INTO dostawa(
  data_dostawy, kraj_pochodzenia, czy_zarejestrowany, czy_uszkodzony,
  id_plac, id_samochod
)
VALUES (SYSDATE, 'DE', 1, 0, &v_plac_id, &v_samochod_id);

-- Potwierdzenie: stan po INSERT
SELECT gotowy_do_sprzedazy FROM samochod WHERE id_samochod = &v_samochod_id;
SELECT liczba_aut FROM plac WHERE id_plac = &v_plac_id;

-- C9: FK – porażka: nieistniejący plac i samochod
PROMPT TEST_3b: dostawa - porazka (FK)
INSERT INTO dostawa(
  data_dostawy, kraj_pochodzenia, czy_zarejestrowany, czy_uszkodzony,
  id_plac, id_samochod
)
VALUES (SYSDATE, 'DE', 1, 0, 999999, 999999);

-- C10: trg_block_delete_samochod – porażka: nie wolno usuwać auta z transakcją
PROMPT TEST_4: delete samochod - porazka
DELETE FROM samochod WHERE id_samochod = &v_samochod_id;

-- C11: trg_block_delete_klient – porażka: nie wolno usuwać klienta z transakcją
PROMPT TEST_4b: delete klient - porazka
DELETE FROM klient WHERE id_klient = &v_klient_id;

-- C12: sukces: klient bez transakcji -> można usunąć
PROMPT TEST_4c: klient bez transakcji - sukces
INSERT INTO klient(imie, nazwisko, pesel, rodzaj_dokumentu, nr_dokumentu)
VALUES ('Test', 'BezTrans', '99999999999', 'Dowod', 'ABC123');
DELETE FROM klient WHERE pesel = '99999999999';

-- C13: trg_audit_klient_phone – sukces: zmiana telefonu -> wpis do audit_log
PROMPT TEST_5: audit telefonu - sukces
UPDATE klient SET telefon = '123456789' WHERE id_klient = &v_klient_id;
SELECT * FROM audit_log WHERE tabela = 'KLIENT' ORDER BY change_ts DESC;

-- C14: trg_audit_klient_phone – porażka: brak zmiany -> brak nowego wpisu
PROMPT TEST_5b: audit telefonu - brak zmiany
UPDATE klient SET telefon = telefon WHERE id_klient = &v_klient_id;
SELECT * FROM audit_log WHERE tabela = 'KLIENT' ORDER BY change_ts DESC;

-- C15: trg_val_ubezpieczenie_bi – sukces: data_konca NULL -> trigger ustawia automatycznie
PROMPT TEST_6: ubezpieczenie - sukces (data_konca NULL)
INSERT INTO ubezpieczenie(
  id_samochod, firma_ubezpieczeniowa, nr_polisy,
  data_poczatku, data_konca, koszt
)
VALUES (&v_samochod_id, 'PZU', 'POLISA_TEST_OK', DATE '2025-01-01', NULL, 1200);

-- Potwierdzenie: w SELECT widać ustawioną data_konca
SELECT id_samochod, nr_polisy, data_poczatku, data_konca, koszt
FROM ubezpieczenie
WHERE nr_polisy = 'POLISA_TEST_OK';

-- C16: trg_val_ubezpieczenie_bi – porażka: data_konca < data_poczatku
PROMPT TEST_6b: ubezpieczenie - porazka (data_konca < data_poczatku)
INSERT INTO ubezpieczenie(
  id_samochod, firma_ubezpieczeniowa, nr_polisy,
  data_poczatku, data_konca, koszt
)
VALUES (&v_samochod_id, 'WARTA', 'POLISA_TEST_ERR', DATE '2025-01-01', DATE '2024-12-31', 1200);
