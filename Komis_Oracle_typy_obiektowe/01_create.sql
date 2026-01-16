-- 01_create.sql
-- Mini-model obiektowo-relacyjny w Oracle: Komis samochodowy
-- Wersja stabilna – uruchamialna wielokrotnie "od zera"

SET SERVEROUTPUT ON
PROMPT === [01] Sprzatanie (drop hard) ===

-- Twarde usuniecie obiektow niezaleznie od ich aktualnego stanu
BEGIN EXECUTE IMMEDIATE 'DROP TABLE evt_tab PURGE';      EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE car_tab PURGE';      EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE klient_tab PURGE';   EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TABLE car_tab_tmp PURGE';  EXCEPTION WHEN OTHERS THEN NULL; END;
/

BEGIN EXECUTE IMMEDIATE 'DROP TYPE t_evt FORCE';    EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TYPE t_car FORCE';    EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN EXECUTE IMMEDIATE 'DROP TYPE t_klient FORCE'; EXCEPTION WHEN OTHERS THEN NULL; END;
/

PURGE RECYCLEBIN;
/

PROMPT === [01] Typy obiektowe ===

-----------------------------------------------------------------------
-- Encja A: Samochod w komisie
-----------------------------------------------------------------------
CREATE OR REPLACE TYPE t_car AS OBJECT (
  car_id      NUMBER(10),
  vin         VARCHAR2(20),
  marka       VARCHAR2(30),
  model       VARCHAR2(30),
  rok_prod    NUMBER(4),
  cena_netto  NUMBER(10,2),
  waluta      VARCHAR2(3),

  -- (6a) Metoda obliczeniowa
  MEMBER FUNCTION cena_brutto(p_vat NUMBER DEFAULT 0.23) RETURN NUMBER,

  -- (6b) Metoda opisowa
  MEMBER FUNCTION opis RETURN VARCHAR2,

  -- (8A) MAP METHOD – sortowanie po cenie netto
  MAP MEMBER FUNCTION map_key RETURN NUMBER
);
/

CREATE OR REPLACE TYPE BODY t_car AS

  MEMBER FUNCTION cena_brutto(p_vat NUMBER DEFAULT 0.23) RETURN NUMBER IS
  BEGIN
    RETURN ROUND(self.cena_netto * (1 + NVL(p_vat,0)), 2);
  END;

  MEMBER FUNCTION opis RETURN VARCHAR2 IS
  BEGIN
    RETURN self.marka || ' ' || self.model ||
           ' (' || self.rok_prod || '), VIN=' || self.vin;
  END;

  MAP MEMBER FUNCTION map_key RETURN NUMBER IS
  BEGIN
    RETURN NVL(self.cena_netto, 0);
  END;

END;
/

-----------------------------------------------------------------------
-- Encja B: Klient komisu
-----------------------------------------------------------------------
CREATE OR REPLACE TYPE t_klient AS OBJECT (
  klient_id   NUMBER(10),
  imie        VARCHAR2(30),
  nazwisko    VARCHAR2(40),
  email       VARCHAR2(80),
  data_ur     DATE,

  MEMBER FUNCTION pelna_nazwa RETURN VARCHAR2
);
/

CREATE OR REPLACE TYPE BODY t_klient AS

  MEMBER FUNCTION pelna_nazwa RETURN VARCHAR2 IS
  BEGIN
    RETURN self.imie || ' ' || self.nazwisko;
  END;

END;
/

-----------------------------------------------------------------------
-- Encja zdarzenia: powiazanie CAR <-> KLIENT
-----------------------------------------------------------------------
CREATE OR REPLACE TYPE t_evt AS OBJECT (
  evt_id      NUMBER(10),
  evt_ts      TIMESTAMP,
  evt_typ     VARCHAR2(20),
  car_ref     REF t_car,
  klient_ref  REF t_klient,
  czas_min    NUMBER(5),
  notatka     VARCHAR2(200),

  MEMBER FUNCTION koszt RETURN NUMBER,
  MEMBER FUNCTION to_text RETURN VARCHAR2
);
/

CREATE OR REPLACE TYPE BODY t_evt AS

  MEMBER FUNCTION koszt RETURN NUMBER IS
  BEGIN
    IF UPPER(self.evt_typ) = 'JAZDA' THEN
      RETURN NVL(self.czas_min,0) * 5;
    ELSE
      RETURN 0;
    END IF;
  END;

  MEMBER FUNCTION to_text RETURN VARCHAR2 IS
  BEGIN
    RETURN 'EVT['||self.evt_id||'] '||self.evt_typ||' @ '||
           TO_CHAR(self.evt_ts,'YYYY-MM-DD HH24:MI')||
           ', min='||NVL(TO_CHAR(self.czas_min),'NULL')||
           ', note='||NVL(self.notatka,'-');
  END;

END;
/

PROMPT === [01] Tabele obiektowe ===

-----------------------------------------------------------------------
-- Tabele OF
-----------------------------------------------------------------------
CREATE TABLE car_tab OF t_car (
  CONSTRAINT car_pk PRIMARY KEY (car_id),
  CONSTRAINT car_vin_uq UNIQUE (vin)
);

CREATE TABLE klient_tab OF t_klient (
  CONSTRAINT klient_pk PRIMARY KEY (klient_id),
  CONSTRAINT klient_email_uq UNIQUE (email)
);

CREATE TABLE evt_tab OF t_evt (
  CONSTRAINT evt_pk PRIMARY KEY (evt_id)
);

-----------------------------------------------------------------------
-- Tabela pomocnicza do testu REF poza SCOPE
-----------------------------------------------------------------------
CREATE TABLE car_tab_tmp OF t_car;

-----------------------------------------------------------------------
-- (4) SCOPE dla referencji
-----------------------------------------------------------------------
ALTER TABLE evt_tab ADD SCOPE FOR (car_ref) IS car_tab;
ALTER TABLE evt_tab ADD SCOPE FOR (klient_ref) IS klient_tab;

PROMPT === [01] Koniec create ===
