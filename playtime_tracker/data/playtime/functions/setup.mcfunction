# Legt die Basis-Scoreboards einmalig an
scoreboard objectives add pt_tick dummy {"text":"Spielzeit Rest-Ticks"}
scoreboard objectives add pt_min dummy {"text":"Spielzeit Minuten"}
scoreboard objectives add pt_hr dummy {"text":"Spielzeit Stunden"}
scoreboard objectives add pt_day dummy {"text":"Spielzeit Tage"}
scoreboard objectives add pt_total_hours dummy {"text":"Spielzeit (Gesamtstunden)"}
scoreboard objectives add pt_total_minutes dummy {"text":"Spielzeit (Gesamtminuten)"}

# Hilfs-Scoreboards für Berechnungen
scoreboard objectives add pt_const dummy {"text":"Konstanten"}
scoreboard objectives add pt_import dummy {"text":"Import-Status"}
scoreboard objectives add pt_stat minecraft.custom:minecraft.play_time {"text":"Vanilla Spielzeit"}
scoreboard objectives add pt_calc dummy {"text":"Berechnungshilfe"}

# Konstanten setzen
scoreboard players set #minute pt_const 1200
scoreboard players set #hour pt_const 72000
scoreboard players set #day pt_const 1728000
scoreboard players set #hours_per_day pt_const 24
scoreboard players set #minutes_per_hour pt_const 60

# Merker, damit Setup nur einmal ausgeführt wird
data modify storage playtime:state initialized set value 1b
data modify storage playtime:state version set value 4
