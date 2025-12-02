# Fügt neue Scoreboards und Konstanten für Version 2 hinzu
scoreboard objectives add pt_stat minecraft.custom:minecraft.play_time {"text":"Gesamtspielzeit (Ticks)"}
scoreboard objectives add pt_calc dummy {"text":"Spielzeit Berechnung"}
scoreboard objectives add pt_import dummy {"text":"Spielzeit Importstatus"}
scoreboard objectives add pt_const dummy {"text":"Spielzeit Konstanten"}

# Konstanten für Tick->Zeit-Umrechnung (20 Ticks = 1 Sekunde)
scoreboard players set #minute pt_const 1200
scoreboard players set #hour pt_const 72000
scoreboard players set #day pt_const 1728000

# Anzeige auf alle verfügbaren Scoreboard-Slots legen
scoreboard objectives setdisplay sidebar pt_day {"text":"Spielzeit (Tage)"}
scoreboard objectives setdisplay list pt_hr {"text":"Spielzeit (Stunden)"}
scoreboard objectives setdisplay belowname pt_min {"text":"Spielzeit (Minuten)"}

# Version merken
data modify storage playtime:state version set value 2
