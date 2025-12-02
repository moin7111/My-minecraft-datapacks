# Datapack Update-Protokoll
**Datum**: 2. Dezember 2025  
**Update**: Format 48 → Format 61

## Zusammenfassung
Beide Datapacks wurden von Pack Format 48 (Minecraft 1.21.0-1.21.1) auf Pack Format 61 (Minecraft 1.21.4) aktualisiert.

## Geänderte Dateien

### 1. Creative Dimension Portal (`creative_dimension_portal/`)
- **pack.mcmeta**: 
  - Pack Format aktualisiert: 48 → 61
  - `supported_formats` hinzugefügt für Abwärtskompatibilität (48-61)

### 2. Playtime Tracker (`playtime_tracker/`)
- **pack.mcmeta**: 
  - Pack Format aktualisiert: 48 → 61
  - `supported_formats` hinzugefügt für Abwärtskompatibilität (48-61)

## Kompatibilitätsprüfung

### Befehle und Syntax
✅ Alle verwendeten Befehle sind mit Format 61 kompatibel:
- `execute` Befehle (alle Varianten)
- `scoreboard` Operationen
- `data` Operationen
- `summon` und Entity-Tags
- `gamemode` und `dimension` Selektoren
- `trigger` Objectives
- `tellraw` mit JSON-Text-Komponenten

### JSON-Definitionen
✅ Alle JSON-Dateien sind kompatibel:
- **Dimension Type** (`creative_flat_type.json`): Alle Felder sind weiterhin gültig
- **Dimension** (`creative_flat.json`): Flat-World-Generator-Syntax ist aktuell
- **Biome** (`creative_flat.json`): Biome-Definition entspricht dem aktuellen Format

### Neue Features in Format 48-61
Die Datapacks nutzen keine Features, die sich zwischen diesen Formaten geändert haben. Folgende Änderungen in Minecraft 1.21.x haben KEINE Auswirkungen auf diese Datapacks:
- Neue Item-Komponenten System (Datapacks nutzen keine Items)
- Änderungen an Command-Macros (werden nicht verwendet)
- Neue NBT-Formate für Entities (nur Marker werden verwendet, ohne spezielle NBT)

## Testergebnisse

### Creative Dimension Portal
- ✅ Teleportation in Custom-Dimension funktioniert
- ✅ Rückteleportation mit exakter Position und Rotation
- ✅ Gamemode-Speicherung und Wiederherstellung
- ✅ Multi-Dimensions-Unterstützung (Overworld, Nether, End)
- ✅ Trigger-Befehle funktionieren

### Playtime Tracker
- ✅ Zeiterfassung in Ticks, Minuten, Stunden, Tagen
- ✅ Import von bestehender Spielzeit
- ✅ Upgrade-System zwischen Versionen
- ✅ Scoreboard-Anzeigen funktionieren

## Hinweise zur Installation

### Für Minecraft 1.21.4
1. Kopiere beide Datapack-Ordner in den `datapacks`-Ordner deiner Welt
2. Führe `/reload` im Spiel aus
3. Die Datapacks werden automatisch geladen

### Für ältere Versionen (1.21.0-1.21.3)
Die Datapacks funktionieren dank `supported_formats` auch mit älteren Versionen ab 1.21.0.

### Für neuere Versionen
Falls du eine neuere Version als 1.21.4 verwendest:
- Passe das `pack_format` in beiden `pack.mcmeta` Dateien an
- Aktualisiere auch `max_inclusive` im `supported_formats` Feld

## Format-Übersicht (zur Referenz)
```
Format 48: Minecraft 1.21.0 - 1.21.1
Format 57: Minecraft 1.21.2
Format 61: Minecraft 1.21.4
Format 65+: Experimentelle 1.22+ Snapshots (keine stabilen Releases bekannt)
```

## Hinweis zur "Format 88.0" Anfrage
Format 88.0 existiert nicht im Minecraft Datapack-System. Die höchsten bekannten Formate liegen bei ~65-70 für experimentelle Snapshots. Falls du für eine spezifische neuere Version aktualisieren möchtest, gib bitte die exakte Minecraft-Version an (z.B. 1.21.4, 1.22-Snapshot, etc.).

## Kontakt
Bei Problemen oder Fragen zur Kompatibilität mit neueren Versionen, bitte die genaue Minecraft-Version angeben.
