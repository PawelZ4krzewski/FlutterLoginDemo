## Flutter Login Demo

Projekt przedstawia prostą aplikację mobilną typu proof-of-concept z ekranem logowania oraz listą przykładowych powiadomień. Kod ma charakter edukacyjny – pokazuje podstawowe wykorzystanie widżetów Material Design, zarządzanie stanem w komponencie typu `StatefulWidget`, obsługę pól tekstowych oraz renderowanie listy z separacją elementów.

### Główne funkcjonalności
1. Ekran logowania z polami: email, hasło, checkbox „Zapamiętaj mnie” oraz akcją odzyskiwania hasła (placeholder).
2. Przycisk logowania (bez podpiętej logiki uwierzytelniania – do samodzielnej rozbudowy).
3. Sekcja „Twoje powiadomienia” – dynamicznie generowana lista 50 pozycji (`ListView.separated`).
4. Proste wykorzystanie assetu graficznego (logo) poprzez `Image.asset`.

### Struktura katalogów (okrojona do platform docelowych)
```
lib/
	main.dart          # Punkt startowy aplikacji – uruchamia MaterialApp z LoginScreen
	login_screen.dart  # Implementacja ekranu logowania i listy powiadomień
assets/
	pp.png             # Logo wyświetlane w nagłówku
android/             # Konfiguracja projektu Android
ios/                 # Konfiguracja projektu iOS
pubspec.yaml         # Konfiguracja zależności i deklaracja assets
```

### Użyte biblioteki / technologie
- Rdzeń frameworka do tworzenia interfejsu.
- Material Design widgets.
- System zarządzania zasobami (sekcja `assets` w konfiguracji).
- Wbudowane narzędzia do budowy na platformy Android oraz iOS.

### Architektura i podejście
- Minimalistyczna struktura – jedna główna ścieżka nawigacji (bez `Navigator` i routingu wieloekranowego).
- Lokalny stan w komponencie (`StatefulWidget`) – wystarczający dla tak małego formularza.
- UI deklaratywne: hierarchia kolumn, paddingi, responsywne dopasowanie szerokości poprzez `Expanded` i `SizedBox`.
- Lista powiadomień renderowana leniwie przy pomocy `ListView.separated`.
