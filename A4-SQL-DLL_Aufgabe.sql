/*
*****************************
Autor: Daan de Dios
Datum: 2018-09-02
Aufgabe: A4 - SQL-DDL
*****************************
##################################################################################################################
!! Um diese Aufgabe zu lösen benötigt ihr keine Datenbank, diese wird mit der Aufgabe erstellt. Viel Erfolg !!
!! Musterlösungen sind unter folgendem Link zu finden: https://github.com/daandedios/M105_A4-SQL-DDL/blob/master/A4-SQL-DLL_Musterl%C3%B6sungen.sql
##################################################################################################################
*/


-- 1. Erstellen Sie ein neues Schema (Datenbank) mit dem Namen Garage_XY, wobei XY die Initialen Ihres Namens sind.
--    Stellen Sie sicher, dass eine ev. bereits bestehendes Schema mit demselben Namen zuerst gelöscht wird.
/*--------------------------------------------------------------------------------------------------------------------*/



-- 2.  Wechseln Sie in Ihre neue Datenbank und erzeugen Sie darin eine Tabelle „Auto“. Die Tabelle soll dabei von
--     jedem Auto die Marke, das Modell, die Fahrgestellnummer, die Farbe (Standard ist silber), die Anzahl Türen,
--     der Hubraum, das Einkaufsdatum und den Einkaufspreis beinhalten. Die Automarke, das Modell und die Fahrgestellnummer sind Pflichtfelder.
--     Die Fahrgestellnummer ist zusätzlich Primärschlüssel. Wählen Sie für die Attribute sinnvolle Datentypen.
/*--------------------------------------------------------------------------------------------------------------------*/


-- 3. Fügen Sie der Tabelle „Auto“ ein neues Attribut „Schaltung“ zu, bei welchem nur die Werte „Gänger“ und „Automat“ eingegeben werden können.
/*--------------------------------------------------------------------------------------------------------------------*/




-- 4. Funktioniert alles wunschgemäss? Testen Sie Ihre Datenbank mit folgenden Anweisungen:
/*
    INSERT Auto
    VALUES ("Daihatsu", "Terios", "Fahrgestellnummer", DEFAULT, 5, 1495, "2009-04-29", 24999.50, "automat");
    SELECT * FROM Auto;*/
-- Halten Sie Ihre Erkenntnisse als Kommentar (/* … */ im SQL-Skript fest.

-- Erste Variante ************************

-- Zweite Variante********************************

/*--------------------------------------------------------------------------------------------------------------------*/




-- 5. Ändern Sie die Tabelle „Auto“ so, dass der Standard-Wert der Farbe geändert wird. Lösen Sie die Aufgabe mit zwei verschiedenen
--    ALTER Varianten. Mit beiden ALTER Varianten soll nur der Standard-Wert geändert werden. Mit erster Variante auf „schwarz“, mit der zweiten auf „weiss“.

-- Variante 1


-- Variante 2


-- Variante 3

/*--------------------------------------------------------------------------------------------------------------------*/




-- 6. Testen Sie Ihre Datenbank erneut, indem Sie die Testanweisungen der Aufgabe 4 benutzen (kopieren) und dabei den
--    Attributwert Fahrgestellnummer durch „FG-1“ (Test der 1. Variante) resp. „FG-2“ (Test der 2. Variante) ersetzen.
--    Halten Sie Ihre Erkenntnisse erneut als Kommentar im SQL-Skript fest.

-- Erste Variante ************************


-- Zweite Variante********************************

/*--------------------------------------------------------------------------------------------------------------------*/



-- 7.   Löschen Sie das Attribut Hubraum aus der Tabelle „Auto“.
/*--------------------------------------------------------------------------------------------------------------------*/


-- 8.   Löschen Sie die Tabelle „Auto“
/*--------------------------------------------------------------------------------------------------------------------*/


-- 9.   Löschen Sie die Datenbak "Garage_XY"
/*--------------------------------------------------------------------------------------------------------------------*/
