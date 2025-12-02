# 🔧 Fehlerbehebung: Playtime Tracker Scoreboards

## Problem
Die Scoreboards für den Playtime Tracker werden nicht angezeigt und können nicht abgerufen werden, obwohl das Datapack geladen ist.

## Ursache
Die `setup.mcfunction` war unvollständig und hat nicht alle benötigten Scoreboards erstellt.

## ✅ Lösung (das wurde bereits behoben!)

Die Datei wurde bereits repariert. Du musst jetzt nur noch das Setup in Minecraft neu ausführen:

### Methode 1: Setup zurücksetzen (empfohlen)

Führe diese Befehle in Minecraft aus:

```minecraft
/data remove storage playtime:state initialized
/reload
```

Das wars! Die Scoreboards sollten jetzt existieren.

### Methode 2: Manuelles Setup (falls Methode 1 nicht funktioniert)

Führe diese Befehle nacheinander aus:

```minecraft
/function playtime:setup
/reload
```

## Überprüfung

Teste, ob es funktioniert:

```minecraft
# Zeige die Spielzeit an
/scoreboard objectives setdisplay sidebar pt_total_hours

# Oder zeige Tage an
/scoreboard objectives setdisplay sidebar pt_day

# Liste alle Scoreboards auf
/scoreboard objectives list
```

Du solltest jetzt folgende Scoreboards sehen:
- ✅ `pt_tick` - Rest-Ticks
- ✅ `pt_min` - Minuten (0-59)
- ✅ `pt_hr` - Stunden (0-23)
- ✅ `pt_day` - Tage
- ✅ `pt_total_hours` - Gesamtstunden
- ✅ `pt_const` - Konstanten
- ✅ `pt_import` - Import-Status
- ✅ `pt_stat` - Vanilla Spielzeit
- ✅ `pt_calc` - Berechnungshilfe

## Was wurde geändert?

Die `setup.mcfunction` erstellt jetzt alle benötigten Scoreboards:

1. **Haupt-Scoreboards** (für Spieler sichtbar):
   - `pt_day`, `pt_hr`, `pt_min`, `pt_tick`
   - `pt_total_hours` (NEU - für Sidebar-Anzeige)

2. **Hilfs-Scoreboards** (für interne Berechnungen):
   - `pt_const` (Konstanten wie 1200 Ticks = 1 Minute)
   - `pt_import` (Import-Status für jeden Spieler)
   - `pt_stat` (Vanilla Spielzeit von Minecraft)
   - `pt_calc` (Temporäre Berechnungen)

## Wichtig!

Nach dem Reload wird automatisch:
- Die vorhandene Vanilla-Spielzeit importiert
- Die Gesamtstunden für jeden Spieler berechnet
- Die Sidebar mit `pt_total_hours` angezeigt

Du musst nichts weiter tun! 🎉

## Weitere Anzeige-Optionen

```minecraft
# Gesamtstunden anzeigen (Standard)
/scoreboard objectives setdisplay sidebar pt_total_hours

# Tage anzeigen
/scoreboard objectives setdisplay sidebar pt_day

# Stunden (0-23) anzeigen
/scoreboard objectives setdisplay sidebar pt_hr

# Minuten (0-59) anzeigen
/scoreboard objectives setdisplay sidebar pt_min

# Sidebar ausblenden
/scoreboard objectives setdisplay sidebar
```

## Immer noch Probleme?

Falls es immer noch nicht funktioniert:

1. **Überprüfe die Datapack-Installation:**
   ```
   /datapack list
   ```
   Du solltest `file/playtime_tracker` sehen.

2. **Stelle sicher, dass du Operator bist:**
   ```
   /op <dein_name>
   ```

3. **Entferne und lade das Datapack neu:**
   ```
   /datapack disable "file/playtime_tracker"
   /datapack enable "file/playtime_tracker"
   /reload
   ```

4. **Letzter Ausweg - Komplettes Neusetup:**
   ```
   /data remove storage playtime:state
   /reload
   ```
