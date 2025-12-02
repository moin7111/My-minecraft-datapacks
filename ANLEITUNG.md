# Minecraft Datapacks - Installationsanleitung

Diese Anleitung erklärt, wie du die beiden Datapacks **Creative Dimension Portal** und **Playtime Tracker** in Minecraft installierst und verwendest.

## 📋 Voraussetzungen

- Minecraft Java Edition (Version 1.21.4 oder höher, da `pack_format` 48 verwendet wird)
- Eine Minecraft-Welt (Singleplayer oder Multiplayer mit Admin-Rechten)

## 🚀 Installation

### Schritt 1: Datapacks in die Welt kopieren

1. **Finde deinen Minecraft-Weltenordner:**
   - Windows: `%APPDATA%\.minecraft\saves\[Weltname]\datapacks\`
   - Mac: `~/Library/Application Support/minecraft/saves/[Weltname]/datapacks/`
   - Linux: `~/.minecraft/saves/[Weltname]/datapacks/`

2. **Kopiere beide Datapack-Ordner:**
   - Kopiere den Ordner `creative_dimension_portal` in den `datapacks`-Ordner
   - Kopiere den Ordner `playtime_tracker` in den `datapacks`-Ordner

### Schritt 2: Datapacks in Minecraft aktivieren

**Option A: Beim Erstellen einer neuen Welt**
1. Erstelle eine neue Welt
2. Klicke auf "Datenpakete"
3. Bewege beide Datapacks von links nach rechts (verfügbar → ausgewählt)
4. Erstelle die Welt

**Option B: In einer bestehenden Welt**
1. Lade die Welt
2. Führe den Befehl `/reload` aus
3. Überprüfe mit `/datapack list`, ob beide Datapacks geladen sind

### Schritt 3: Datapacks initialisieren

Die Datapacks werden automatisch beim ersten Laden initialisiert. Du kannst die Initialisierung manuell mit folgendem Befehl überprüfen:

```
/datapack list
```

Du solltest beide Datapacks in der Liste sehen:
- `file/creative_dimension_portal`
- `file/playtime_tracker`

## 📦 Datapack 1: Creative Dimension Portal

### Was macht es?

Dieses Datapack erstellt eine eigene Creative-Dimension, zu der Spieler teleportieren können. Es ist perfekt für Server, auf denen Spieler ihre Bauprojekte in einer getrennten Dimension erstellen möchten.

### Verwendung

**In die Creative-Dimension wechseln:**
```
/trigger creative_enter
```

**Zurück zur ursprünglichen Dimension:**
```
/trigger creative_exit
```

### Features

- ✅ Teleportation in eine separate Creative-Flachland-Dimension
- ✅ Automatische Umschaltung in den Creative-Modus
- ✅ Merkt sich deine ursprüngliche Position und Dimension
- ✅ Bringt dich zurück zu deiner exakten Position
- ✅ Unterstützt Overworld, Nether und End als Ausgangsdimensionen

## 📊 Datapack 2: Playtime Tracker

### Was macht es?

Dieses Datapack trackt die Spielzeit jedes Spielers in Tagen, Stunden und Minuten.

### Verwendung

**Standard-Anzeige (Gesamtminuten):**
```
/scoreboard objectives setdisplay sidebar pt_total_minutes
```
Die Sidebar zeigt damit deine Gesamtspielzeit und aktualisiert sich jede Minute automatisch.

**Alternative Ansichten:**
```
/scoreboard objectives setdisplay sidebar pt_day
/scoreboard objectives setdisplay sidebar pt_hr
/scoreboard objectives setdisplay sidebar pt_min
```

**Spielzeit eines Spielers abfragen:**
```
/scoreboard players get <Spielername> pt_total_minutes
/scoreboard players get <Spielername> pt_total_hours
/scoreboard players get <Spielername> pt_day
/scoreboard players get <Spielername> pt_hr
/scoreboard players get <Spielername> pt_min
```

### Scoreboards

Das Datapack erstellt folgende Scoreboards:
- `pt_total_minutes` - Gesamtspielzeit in Minuten (Sidebar)
- `pt_total_hours` - Gesamtspielzeit in vollen Stunden
- `pt_day` - Spielzeit in Tagen
- `pt_hr` - Spielzeit in Stunden (0-23)
- `pt_min` - Spielzeit in Minuten (0-59)
- `pt_tick` - Interne Tick-Zählung
- `pt_const` - Konstanten (Ticks pro Minute/Stunde/Tag)
- `pt_import` - Import-Status pro Spieler
- `pt_stat` - Vanilla-Spielzeit (play_time)
- `pt_calc` - temporäre Berechnungshilfe

## 🔧 Fehlerbehebung

### Datapacks werden nicht geladen

1. Überprüfe, ob die Ordner direkt im `datapacks`-Ordner liegen
2. Stelle sicher, dass die `pack.mcmeta` Dateien vorhanden sind
3. Verwende `/reload` um die Datapacks neu zu laden

### Creative Dimension funktioniert nicht

1. Stelle sicher, dass du im Survival- oder Adventure-Modus bist
2. Überprüfe mit `/datapack list`, ob das Datapack aktiviert ist
3. Versuche `/reload` und dann erneut `/trigger creative_enter`

### Playtime Tracker zeigt keine Werte

1. Die Spielzeit beginnt bei 0, wenn das Datapack neu installiert wird
2. Spiele mindestens 1 Minute, dann aktualisiert sich die Anzeige
3. Verwende `/scoreboard players list @s` um deine aktuellen Scores zu sehen

## 🎮 Schnellstart (TL;DR)

1. Kopiere beide Ordner in `saves/[Weltname]/datapacks/`
2. Starte Minecraft und lade die Welt
3. Führe `/reload` aus
4. Teste die Creative-Dimension mit `/trigger creative_enter`
5. Zeige deine Spielzeit mit `/scoreboard objectives setdisplay sidebar pt_total_minutes`

## 📝 Hinweise

- Die Creative-Dimension ist eine Flachland-Welt (Superflat)
- Alle Spieler-Daten werden in Scoreboards gespeichert und bleiben beim Neustart erhalten
- Die Datapacks sind für Minecraft Version 1.21.4+ optimiert

Viel Spaß mit den Datapacks! 🎉
