# Überträgt 1 Tag Spielzeit und normalisiert überschüssige Stunden
scoreboard players remove @s pt_hr 24
scoreboard players add @s pt_day 1

# Wiederholung, falls mehr als ein Tag aufgelaufen ist
execute if score @s pt_hr matches 24.. run function playtime:day

# Gesamtstunden aktualisieren
function playtime:update_total_hours
