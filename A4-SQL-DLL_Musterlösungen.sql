/*
*****************************
Autor: Daan de Dios
Datum: 2018-09-02
Aufgabe: A4 - SQL-DDL
*****************************
######################################
!! Dies sind die Musterlösungen !!
######################################
*/


-- 1. Erstellen Sie ein neues Schema (Datenbank) mit dem Namen Garage_XY, wobei XY die Initialen Ihres Namens sind.
--    Stellen Sie sicher, dass eine ev. bereits bestehendes Schema mit demselben Namen zuerst gelöscht wird.
DROP DATABASE IF EXISTS Garage_dd ;
CREATE DATABASE Garage_dd DEFAULT CHARACTER SET utf8;
/*--------------------------------------------------------------------------------------------------------------------*/



-- 2.  Wechseln Sie in Ihre neue Datenbank und erzeugen Sie darin eine Tabelle „Auto“. Die Tabelle soll dabei von
--     jedem Auto die Marke, das Modell, die Fahrgestellnummer, die Farbe (Standard ist silber), die Anzahl Türen,
--     der Hubraum, das Einkaufsdatum und den Einkaufspreis beinhalten. Die Automarke, das Modell und die Fahrgestellnummer sind Pflichtfelder.
--     Die Fahrgestellnummer ist zusätzlich Primärschlüssel. Wählen Sie für die Attribute sinnvolle Datentypen.
USE Garage_dd;

CREATE TABLE Auto (
  Marke VARCHAR(25) NOT NULL,
  Model VARCHAR(25) NOT NULL,
  Fahrgestellnummer VARCHAR(255) NOT NULL PRIMARY KEY ,
  Farbe VARCHAR(30) DEFAULT 'Silber',
  AnzahlTueren INT,
  Hubraum INT,
  Einkaufsdatum DATE,
  Einkaufspreis DOUBLE
)
ENGINE = InnoDB;
/*--------------------------------------------------------------------------------------------------------------------*/




-- 3. Fügen Sie der Tabelle „Auto“ ein neues Attribut „Schaltung“ zu, bei welchem nur die Werte „Gänger“ und „Automat“ eingegeben werden können.
ALTER TABLE Auto
    ADD Schaltung ENUM ('Gaenger', 'Automat');
/*--------------------------------------------------------------------------------------------------------------------*/




-- 4. Funktioniert alles wunschgemäss? Testen Sie Ihre Datenbank mit folgenden Anweisungen:
/*
    INSERT Auto
    VALUES ("Daihatsu", "Terios", "Fahrgestellnummer", DEFAULT, 5, 1495, "2009-04-29", 24999.50, "automat");
    SELECT * FROM Auto;*/
-- Halten Sie Ihre Erkenntnisse als Kommentar (/* … */ im SQL-Skript fest.

-- Erste Variante ************************
INSERT Auto
  VALUES ("Daihatsu", "Terios", "Fahrgestellnummer", DEFAULT, 5, 1495, "2009-04-29", 24999.50, "Automat");

-- Zweite Variante********************************
INSERT Auto (Marke, Model, Fahrgestellnummer, Farbe, AnzahlTueren, Hubraum, Einkaufsdatum, Einkaufspreis, Schaltung)
  VALUES ("Porsche", "911", "AHDZWE-95WD", DEFAULT, 3, 1495, "2018-04-29", 24999.50, "Automat");
/*--------------------------------------------------------------------------------------------------------------------*/




-- 5. Ändern Sie die Tabelle „Auto“ so, dass der Standard-Wert der Farbe geändert wird. Lösen Sie die Aufgabe mit zwei verschiedenen
--    ALTER Varianten. Mit beiden ALTER Varianten soll nur der Standard-Wert geändert werden. Mit erster Variante auf „schwarz“, mit der zweiten auf „weiss“.

-- Variante 1
ALTER TABLE Auto
    MODIFY Farbe VARCHAR(30) DEFAULT 'Schwarz';

-- Variante 2
ALTER TABLE Auto
    CHANGE Farbe
      Farbe VARCHAR(30) DEFAULT 'Weiss';

-- Variante 3
ALTER TABLE Auto
    ALTER Farbe DROP DEFAULT;
ALTER TABLE Auto
    ALTER Farbe SET DEFAULT 'Weiss'
/*--------------------------------------------------------------------------------------------------------------------*/




-- 6. Testen Sie Ihre Datenbank erneut, indem Sie die Testanweisungen der Aufgabe 4 benutzen (kopieren) und dabei den
--    Attributwert Fahrgestellnummer durch „FG-1“ (Test der 1. Variante) resp. „FG-2“ (Test der 2. Variante) ersetzen.
--    Halten Sie Ihre Erkenntnisse erneut als Kommentar im SQL-Skript fest.

-- Erste Variante ************************
INSERT Auto
  VALUES ("Daihatsu", "Terios", "FG-1", DEFAULT, 5, 1495, "2009-04-29", 24999.50, "Automat");

-- Zweite Variante********************************
INSERT Auto (Marke, Model, Fahrgestellnummer, Farbe, AnzahlTueren, Hubraum, Einkaufsdatum, Einkaufspreis, Schaltung)
  VALUES ("Porsche", "911", "FG-2", DEFAULT, 3, 1495, "2018-04-29", 24999.50, "Automat");
/*--------------------------------------------------------------------------------------------------------------------*/



-- 7.   Löschen Sie das Attribut Hubraum aus der Tabelle „Auto“.
ALTER TABLE Auto
    DROP COLUMN Hubraum;
/*--------------------------------------------------------------------------------------------------------------------*/


-- 8.   Löschen Sie die Tabelle „Auto“.
DROP TABLE Auto;
/*--------------------------------------------------------------------------------------------------------------------*/


-- 9.   Löschen Sie die Datenbak "Garage_XY"
DROP DATABASE Garage_dd;
/*--------------------------------------------------------------------------------------------------------------------*/