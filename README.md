# vClear — Usuwanie nieużywanych pojazdów (FiveM Vanilla)

Skrypt w pełni po polsku

**vClear** to lekki i skuteczny skrypt administracyjny dla serwerów FiveM, który pozwala na usunięcie nieużywanych pojazdów z mapy za pomocą jednej komendy:

```
/vclear
```

## Główne funkcje

- Działa na serwerach *vanilla FiveM*
- Obsługuje komendy z poziomu gry oraz konsoli serwera  
- Wyświetla w czacie informację o liczbie usuniętych pojazdów  
- Działa w całości po stronie serwera — bez obciążenia klientów  
- Brak zewnętrznych zależności — prosta instalacja typu "wrzuć i uruchom"

---

## Instalacja

1. Skopiuj folder `un_vClear` do katalogu `resources`  
2. W pliku `server.cfg` dodaj:

```
ensure un_vClear
add_ace group.admin command.vclear allow
add_principal identifier.steam:yourSteamID group.admin
```

Zamień `yourSteamID` na swój identyfikator Steam (np. `steam:11000010abc1234`)

3. Zrestartuj serwer i użyj komendy `/vclear` w grze lub konsoli

---

## Zastosowania

- Usuwanie porzuconych lub nieużywanych pojazdów z całej mapy  
- Redukcja lagów w godzinach szczytu  
- Porządkowanie stanu serwera przed restartem  
- Prosty punkt wyjścia do dalszej rozbudowy narzędzi administracyjnych

---
