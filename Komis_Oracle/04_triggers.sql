--triggery + tabela audytu (jeśli potrzebna)

-- ============================================
-- 1. Historia zmian ceny samochodu
-- AFTER UPDATE OF cena ON samochod
-- ============================================
CREATE OR REPLACE TRIGGER log_cena_update
AFTER UPDATE OF cena ON samochod
FOR EACH ROW
WHEN (OLD.cena != NEW.cena)
BEGIN
    INSERT INTO historia_cen (id_samochod, stara_cena, nowa_cena)
    VALUES (:OLD.id_samochod, :OLD.cena, :NEW.cena);
END;
/

-- ============================================
-- 2. Sprawdzenie gotowości samochodu do sprzedaży
-- BEFORE INSERT ON kartoteka_transakcji
-- ============================================
CREATE OR REPLACE TRIGGER before_insert_kartoteka_transakcji
BEFORE INSERT ON kartoteka_transakcji
FOR EACH ROW
DECLARE
    v_ready NUMBER(1);
BEGIN
    SELECT gotowy_do_sprzedazy
    INTO v_ready
    FROM samochod
    WHERE id_samochod = :NEW.id_samochod;

    IF v_ready = 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Samochód nie jest gotowy do sprzedaży');
    END IF;
END;
/

-- ============================================
-- 3. Automatyczne ustawienie samochodu jako gotowego po dostawie
-- AFTER INSERT ON dostawa
-- ============================================
CREATE OR REPLACE TRIGGER after_insert_dostawa
AFTER INSERT ON dostawa
FOR EACH ROW
BEGIN
    UPDATE samochod
    SET gotowy_do_sprzedazy = 1
    WHERE id_samochod = :NEW.id_samochod;
END;
/

-- ============================================
-- 4. Blokowanie usunięcia samochodu powiązanego z transakcją
-- BEFORE DELETE ON samochod
-- ============================================
CREATE OR REPLACE TRIGGER before_delete_samochod
BEFORE DELETE ON samochod
FOR EACH ROW
DECLARE
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM kartoteka_transakcji
    WHERE id_samochod = :OLD.id_samochod;

    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Nie można usunąć samochodu powiązanego z transakcją');
    END IF;
END;
/

-- ============================================
-- 5. Automatyczne ustawienie daty końca polisy ubezpieczeniowej
-- BEFORE INSERT ON ubezpieczenie
-- ============================================
CREATE OR REPLACE TRIGGER before_insert_ubezpieczenie
BEFORE INSERT ON ubezpieczenie
FOR EACH ROW
BEGIN
    IF :NEW.data_konca IS NULL THEN
        :NEW.data_konca := ADD_MONTHS(:NEW.data_poczatku, 12);
    END IF;
END;
/
