# Legt die Basis-Scoreboards einmalig an
scoreboard objectives add pt_tick dummy {"text":"Spielzeit Rest-Ticks"}
scoreboard objectives add pt_min dummy {"text":"Spielzeit Minuten"}
scoreboard objectives add pt_hr dummy {"text":"Spielzeit Stunden"}
scoreboard objectives add pt_day dummy {"text":"Spielzeit Tage"}

# Merker, damit Setup nur einmal ausgeführt wird
data modify storage playtime:state initialized set value 1b
