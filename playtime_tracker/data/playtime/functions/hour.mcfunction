# Überträgt 1 Stunde Spielzeit und normalisiert überschüssige Minuten
scoreboard players remove @s pt_min 60
scoreboard players add @s pt_hr 1

# Wiederholung, falls mehr als eine Stunde aufgelaufen ist
execute if score @s pt_min matches 60.. run function playtime:hour

# Tageberechnung anstoßen
execute if score @s pt_hr matches 24.. run function playtime:day
