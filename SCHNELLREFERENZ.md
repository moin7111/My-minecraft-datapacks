# 🎮 Minecraft Datapacks - Schnellreferenz

## Installation (Kurzversion)

1. Kopiere `creative_dimension_portal` und `playtime_tracker` nach:
   - `saves/[Weltname]/datapacks/`

2. In Minecraft:
   ```
   /reload
   /datapack list
   ```

## Creative Dimension Portal

### Befehle
| Befehl | Beschreibung |
|--------|--------------|
| `/trigger creative_enter` | Betritt die Creative-Dimension |
| `/trigger creative_exit` | Kehrt zur ursprünglichen Position zurück |

### Was passiert?
- Teleportiert dich in eine Flachland-Dimension
- Wechselt automatisch in den Creative-Modus
- Merkt sich deine Position (Overworld/Nether/End)
- Bringt dich genau dorthin zurück

## Playtime Tracker

### Anzeigebefehle
```bash
# Standard (Gesamtminuten)
/scoreboard objectives setdisplay sidebar pt_total_minutes

# Tage anzeigen
/scoreboard objectives setdisplay sidebar pt_day

# Stunden anzeigen
/scoreboard objectives setdisplay sidebar pt_hr

# Minuten anzeigen
/scoreboard objectives setdisplay sidebar pt_min

# Sidebar ausblenden
/scoreboard objectives setdisplay sidebar
```

### Spieler abfragen
```bash
/scoreboard players get <Spielername> pt_total_minutes
/scoreboard players get <Spielername> pt_total_hours
/scoreboard players get <Spielername> pt_day
/scoreboard players get <Spielername> pt_hr
/scoreboard players get <Spielername> pt_min
```

## Scoreboards Übersicht

| Scoreboard | Beschreibung | Wertebereich |
|------------|--------------|--------------|
| `pt_total_minutes` | Gesamtspielzeit in Minuten | 0+ |
| `pt_total_hours` | Gesamtspielzeit in vollen Stunden | 0+ |
| `pt_day` | Gespielte Tage | 0+ |
| `pt_hr` | Stunden (Rest) | 0-23 |
| `pt_min` | Minuten (Rest) | 0-59 |
| `pt_tick` | Interne Ticks | 0-1199 |
| `pt_const` | Konstanten (Ticks pro Zeit) | – |
| `pt_import` | Importstatus pro Spieler | 0/1 |
| `pt_stat` | Vanilla-Spielzeit (Ticks) | 0+ |
| `pt_calc` | Temporäre Berechnungen | – |

## Fehlerbehebung Express

### Problem: Datapacks laden nicht
```
/reload
```

### Problem: Creative Dimension funktioniert nicht
1. Bist du im Survival-Modus? ✓
2. `/datapack list` zeigt beide Datapacks? ✓
3. `/reload` ausführen ✓

### Problem: Playtime zeigt nichts
- Spiele mind. 1 Minute, dann aktualisiert sich die Anzeige

## Verzeichnisstruktur

```
.minecraft/saves/[Weltname]/
└── datapacks/
    ├── creative_dimension_portal/
    │   ├── pack.mcmeta
    │   └── data/
    │       └── ...
    └── playtime_tracker/
        ├── pack.mcmeta
        └── data/
            └── ...
```

## Systemvoraussetzungen

- ✅ Minecraft Java Edition 1.22+ (pack_format 82.0)
- ✅ Operator-Rechte (für Installation)
- ✅ Trigger-Befehle müssen erlaubt sein

---

💡 **Tipp:** Erstelle einen Hotkey für `/trigger creative_enter` in deinen Makros!
