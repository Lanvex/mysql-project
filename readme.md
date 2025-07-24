# Online Game Store - Datenbankprojekt

Dieses Projekt wurde von Maximilian Haug, Niklas Busch und Marc Marjan entwickelt und stellt eine Datenbank für einen Online Game Store dar. Es umfasst die Erstellung der Tabellen, das Einfügen von Beispieldaten sowie verschiedene SQL-Abfragen zur Analyse und Verwaltung der Daten.

## Inhaltsverzeichnis

1. [Projektbeschreibung](#projektbeschreibung)
2. [Datenbankstruktur](#datenbankstruktur)
3. [SQL-Dateien](#sql-dateien)
4. [Beispieldaten](#beispieldaten)
---

## Projektbeschreibung

Das Ziel dieses Projekts ist die Modellierung und Implementierung einer relationalen Datenbank für einen Online Game Store. Die Datenbank enthält Informationen zu Kunden, Spielen, Entwicklerstudios, Genres, Bestellungen und Systemanforderungen. Mit Hilfe von SQL-Abfragen können verschiedene Analysen durchgeführt werden, wie z.B. die Ermittlung des Umsatzes pro Kunde oder die meistverkauften Spiele.

---

## Datenbankstruktur

Die Datenbank besteht aus den folgenden Tabellen:

1. **Customer**: Informationen zu Kunden (ID, Name, E-Mail, Passwort, Registrierungsdatum).
2. **Genre**: Genres der Spiele (ID, Name).
3. **DeveloperStudio**: Entwicklerstudios (ID, Name, Land, Gründungsdatum).
4. **Game**: Spiele (ID, Titel, Erscheinungsjahr, Preis, Genre, Studio).
5. **SystemRequirement**: Systemanforderungen für Spiele (RAM, GPU, CPU, Speicherplatz).
6. **GameOrder**: Bestellungen (ID, Kunde, Datum, Gesamtpreis, Status).
7. **OrderItem**: Artikel in Bestellungen (Bestell-ID, Spiel-ID, Menge, Einzelpreis).

---

## SQL-Dateien

### 01_create-tables.sql
Diese Datei enthält die Definition der Tabellen und deren Beziehungen. Die Tabellen werden in der korrekten Reihenfolge gelöscht und neu erstellt, um Abhängigkeiten zu berücksichtigen.

### 02_create-sample-data.sql
Hier werden Beispieldaten für die Tabellen eingefügt, um die Funktionalität der Datenbank zu testen.

### 03_select-customer-order-count.sql
Abfrage, die alle Kunden mit der Anzahl ihrer Bestellungen ausgibt.

### 04_select-order-details.sql
Abfrage, die Details zu allen Bestellungen inklusive Spiele und Preise ausgibt.

### 05_select-top-5-games.sql
Abfrage, die die Top 5 meistverkauften Spiele nach Verkaufszahlen und Umsatz ausgibt.

### 06_select-games-with-genre-and-studio.sql
Abfrage, die alle Spiele mit Genre, Studio und Preis ausgibt.

### 07_select-system-requirements.sql
Abfrage, die Spiele mit ihren Systemanforderungen ausgibt.

### 08_select-customer-revenue.sql
Abfrage, die den Umsatz pro Kunde berechnet und ausgibt.

### 09_select-avg-price-per-genre.sql
Abfrage, die den Durchschnittspreis pro Genre berechnet und ausgibt.

---

## Beispieldaten

Die Beispieldaten umfassen:

- **Genres**: Action-Adventure, RPG, Simulation, Strategy, Shooter.
- **Entwicklerstudios**: CD Projekt Red, Larian Studios, Nintendo EPD, Rockstar North, FromSoftware.
- **Spiele**: Cyberpunk 2077, Baldur's Gate 3, The Legend of Zelda: Breath of the Wild, Grand Theft Auto V, Elden Ring.
- **Systemanforderungen**: RAM, GPU, CPU und Speicherplatz für jedes Spiel.
- **Kunden**: Beispielkunden mit Namen, E-Mail und Passwort.
- **Bestellungen**: Beispielbestellungen mit Status und Artikeln.