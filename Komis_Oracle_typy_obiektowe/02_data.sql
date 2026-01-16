-- 02_data.sql
-- Dane startowe (min. 10 rekordow A i B, min. 15 zdarzen) + 1 przypadek bledny/ref.

SET SERVEROUTPUT ON

PROMPT === [02] INSERT: CAR_TAB (A) ===
INSERT INTO car_tab VALUES (t_car(1,'VIN000000000000001','Toyota','Corolla',2017, 42000,'PLN'));
INSERT INTO car_tab VALUES (t_car(2,'VIN000000000000002','Toyota','Yaris',2019, 52000,'PLN'));
INSERT INTO car_tab VALUES (t_car(3,'VIN000000000000003','Skoda','Octavia',2016, 39000,'PLN'));
INSERT INTO car_tab VALUES (t_car(4,'VIN000000000000004','Volkswagen','Golf',2018, 61000,'PLN'));
INSERT INTO car_tab VALUES (t_car(5,'VIN000000000000005','Ford','Focus',2015, 31000,'PLN'));
INSERT INTO car_tab VALUES (t_car(6,'VIN000000000000006','BMW','320i',2014, 57000,'PLN'));
INSERT INTO car_tab VALUES (t_car(7,'VIN000000000000007','Audi','A4',2013, 54000,'PLN'));
INSERT INTO car_tab VALUES (t_car(8,'VIN000000000000008','Hyundai','i30',2020, 69000,'PLN'));
INSERT INTO car_tab VALUES (t_car(9,'VIN000000000000009','Kia','Ceed',2021, 75000,'PLN'));
INSERT INTO car_tab VALUES (t_car(10,'VIN000000000000010','Mazda','3',2018, 63000,'PLN'));
COMMIT;

PROMPT === [02] INSERT: KLIENT_TAB (B) ===
INSERT INTO klient_tab VALUES (t_klient(1,'Anna','Nowak','anna.nowak@example.com', DATE '1994-03-12'));
INSERT INTO klient_tab VALUES (t_klient(2,'Piotr','Kowalski','piotr.kowalski@example.com', DATE '1988-11-02'));
INSERT INTO klient_tab VALUES (t_klient(3,'Katarzyna','Wisniewska','k.wisniewska@example.com', DATE '1990-07-21'));
INSERT INTO klient_tab VALUES (t_klient(4,'Marek','Wojcik','marek.wojcik@example.com', DATE '1985-01-09'));
INSERT INTO klient_tab VALUES (t_klient(5,'Ewa','Kaczmarek','ewa.k@example.com', DATE '1997-05-30'));
INSERT INTO klient_tab VALUES (t_klient(6,'Tomasz','Mazur','t.mazur@example.com', DATE '1992-12-14'));
INSERT INTO klient_tab VALUES (t_klient(7,'Olga','Zielinska','olga.z@example.com', DATE '1999-09-03'));
INSERT INTO klient_tab VALUES (t_klient(8,'Pawel','Szymanski','pawel.s@example.com', DATE '1983-06-18'));
INSERT INTO klient_tab VALUES (t_klient(9,'Agnieszka','Dabrowska','aga.d@example.com', DATE '1991-02-26'));
INSERT INTO klient_tab VALUES (t_klient(10,'Michal','Lewandowski','m.lewandowski@example.com', DATE '1989-10-05'));
COMMIT;

PROMPT === [02] INSERT: EVT_TAB (zdarzenia) ===
-- 15 poprawnych zdarzen: mieszanka JAZDA (koszt>0) i REZERW (koszt=0)

INSERT INTO evt_tab
SELECT t_evt(101, SYSTIMESTAMP-INTERVAL '10' DAY, 'JAZDA', REF(c), REF(k), 30, 'pierwsza jazda')
FROM car_tab c, klient_tab k WHERE c.car_id=1 AND k.klient_id=1;

INSERT INTO evt_tab
SELECT t_evt(102, SYSTIMESTAMP-INTERVAL '9' DAY, 'REZERW', REF(c), REF(k), NULL, 'rezerwacja na ogladanie')
FROM car_tab c, klient_tab k WHERE c.car_id=2 AND k.klient_id=2;

INSERT INTO evt_tab
SELECT t_evt(103, SYSTIMESTAMP-INTERVAL '9' DAY, 'JAZDA', REF(c), REF(k), 20, 'miasto')
FROM car_tab c, klient_tab k WHERE c.car_id=2 AND k.klient_id=3;

INSERT INTO evt_tab
SELECT t_evt(104, SYSTIMESTAMP-INTERVAL '8' DAY, 'JAZDA', REF(c), REF(k), 45, 'trasa S8')
FROM car_tab c, klient_tab k WHERE c.car_id=3 AND k.klient_id=4;

INSERT INTO evt_tab
SELECT t_evt(105, SYSTIMESTAMP-INTERVAL '8' DAY, 'REZERW', REF(c), REF(k), NULL, 'zaliczka potwierdzona')
FROM car_tab c, klient_tab k WHERE c.car_id=4 AND k.klient_id=5;

INSERT INTO evt_tab
SELECT t_evt(106, SYSTIMESTAMP-INTERVAL '7' DAY, 'JAZDA', REF(c), REF(k), 15, 'parking')
FROM car_tab c, klient_tab k WHERE c.car_id=4 AND k.klient_id=1;

INSERT INTO evt_tab
SELECT t_evt(107, SYSTIMESTAMP-INTERVAL '7' DAY, 'JAZDA', REF(c), REF(k), 35, 'obwodnica')
FROM car_tab c, klient_tab k WHERE c.car_id=5 AND k.klient_id=6;

INSERT INTO evt_tab
SELECT t_evt(108, SYSTIMESTAMP-INTERVAL '6' DAY, 'REZERW', REF(c), REF(k), NULL, 'czeka na finansowanie')
FROM car_tab c, klient_tab k WHERE c.car_id=6 AND k.klient_id=7;

INSERT INTO evt_tab
SELECT t_evt(109, SYSTIMESTAMP-INTERVAL '6' DAY, 'JAZDA', REF(c), REF(k), 25, 'krotka jazda')
FROM car_tab c, klient_tab k WHERE c.car_id=6 AND k.klient_id=8;

INSERT INTO evt_tab
SELECT t_evt(110, SYSTIMESTAMP-INTERVAL '5' DAY, 'JAZDA', REF(c), REF(k), 40, 'autostrada')
FROM car_tab c, klient_tab k WHERE c.car_id=7 AND k.klient_id=9;

INSERT INTO evt_tab
SELECT t_evt(111, SYSTIMESTAMP-INTERVAL '5' DAY, 'REZERW', REF(c), REF(k), NULL, 'rezerwacja weekend')
FROM car_tab c, klient_tab k WHERE c.car_id=8 AND k.klient_id=10;

INSERT INTO evt_tab
SELECT t_evt(112, SYSTIMESTAMP-INTERVAL '4' DAY, 'JAZDA', REF(c), REF(k), 50, 'trasa podmiejska')
FROM car_tab c, klient_tab k WHERE c.car_id=8 AND k.klient_id=2;

INSERT INTO evt_tab
SELECT t_evt(113, SYSTIMESTAMP-INTERVAL '3' DAY, 'JAZDA', REF(c), REF(k), 20, 'miasto 2')
FROM car_tab c, klient_tab k WHERE c.car_id=9 AND k.klient_id=3;

INSERT INTO evt_tab
SELECT t_evt(114, SYSTIMESTAMP-INTERVAL '2' DAY, 'REZERW', REF(c), REF(k), NULL, 'umowa przygotowana')
FROM car_tab c, klient_tab k WHERE c.car_id=10 AND k.klient_id=4;

INSERT INTO evt_tab
SELECT t_evt(115, SYSTIMESTAMP-INTERVAL '1' DAY, 'JAZDA', REF(c), REF(k), 30, 'test zawieszenia')
FROM car_tab c, klient_tab k WHERE c.car_id=10 AND k.klient_id=5;

COMMIT;

PROMPT === [02] Przypadek testowy: bledny REF (niezgodny SCOPE) ===
-- Tworzymy dodatkowa tabele obiektowa aut (ta sama definicja typu), ale SCOPE w EVT_TAB
-- dopuszcza tylko CAR_TAB. Proba wstawienia REF z CAR_TAB_TMP powinna zostac odrzucona.

CREATE TABLE car_tab_tmp OF t_car;

INSERT INTO car_tab_tmp VALUES (t_car(999,'VIN999999999999999','Tesla','Model 3',2022, 160000,'PLN'));
COMMIT;

DECLARE
  v_err VARCHAR2(4000);
BEGIN
  INSERT INTO evt_tab
  SELECT t_evt(999, SYSTIMESTAMP, 'JAZDA', REF(c2), (SELECT REF(k) FROM klient_tab k WHERE k.klient_id=1), 10, 'NIE POWINNO SIE WSTAWIC')
  FROM car_tab_tmp c2 WHERE c2.car_id=999;

  COMMIT;

  DBMS_OUTPUT.PUT_LINE('BLAD: wstawiono zdarzenie z ref poza SCOPE (to nie powinno sie wydarzyc).');
EXCEPTION
  WHEN OTHERS THEN
    v_err := SQLERRM;
    DBMS_OUTPUT.PUT_LINE('OCZEKIWANE: blad przy wstawianiu zdarzenia z REF poza SCOPE.');
    DBMS_OUTPUT.PUT_LINE('Szczegoly: '||v_err);
    ROLLBACK;
END;
/
