## Serwis_samochodowy
Baza danych serwisu samochodowego w SQL

Projekt Edukacyjny z Technologii informatycznych na AiR R.1

Projekt bazy danych dla serwisu samochodowego.  
Zawiera schematy tabel, migracje oraz przykładowe dane testowe.

## Struktura katalogów
- `schema/` – definicje tabel (klienci, usługi, części, wizyty)
- `migration/` – pliki migracyjne (tworzenie schematu, indeksy, ograniczenia)
- `data/` – przykładowe dane do załadowania
- `docs/` – dokumentacja projektu
- `baza danych/` – plik .sql do stworzenia bazy
- `przykładowe kwerandy/` - zapytania testowe do bazy danych

## Instalacja
1. Sklonuj repozytorium:
   `git.cmd
   git clone https://github.com/KarMa2880/Serwis_samochodowy.git

2. Wprowadź/dodaj zmiany na swoim branch
3. Utwórz pull request
4. Po sprawdzeniu zmian i akceptacji zespołu, wykonaj merge do Main branch

## Instrukcja uruchomienia bazy danych

Wymagania
• 	MySQL Workbench 8.0
• 	MySQL Server 8.0

1. Pobierz plik "baza_danych.sql"

2. Uruchom/zainstaluj MySql Workbench/Serwer

3. Otwórz narzędzie importu
	• 	Uruchom MySQL Workbench.
	• 	Wybierz/utwórz swoje połączenie do serwera MySQL.
	• 	W menu po lewej stronie kliknij Server → Data Import.
	
4. Wybierz tryb importu
	W sekcji Import Options zaznacz:
	• 	Import from Self‑Contained File.
	• 	Wskaż pobrany plik "baza_danych.sql" z dysku (dump bazy).
	
5. Wybierz bazę docelową
	W sekcji Default Target Schema:
	• 	wybierz istniejącą bazę, lub
	• 	kliknij New…, aby utworzyć nową bazę (np. serwis_samochodowy).
	
6. Zaznacz obiekty do importu
	W sekcji Schema Objects:
	• 	zaznacz wszystkie tabele, widoki, procedury (jeśli są),
	• 	upewnij się, że opcja Dump Structure and Data jest aktywna.
	
7. Uruchom import
	•	Na dole kliknij Start Import.
	•	Workbench wykona cały plik  i odtworzy bazę.

8. Po imporcie
	• 	Odśwież listę schematów: Schemas → Refresh.
	• 	Rozwiń swoją bazę i sprawdź, czy pojawiły się tabele.
	•	W edytorze SQL(Query) wpisz i wykonaj kwerandy/zapytania(znak błyskawicy)
	
9. Przykładowe kwerandy znajdziesz w folderze "Przykładowe zapytania"

## Autorzy  / współtwórcy
• Marcin Karmoliński
• Mariusz Fedoryn
• Artur Gospodarek
• Bartosz Głowala

