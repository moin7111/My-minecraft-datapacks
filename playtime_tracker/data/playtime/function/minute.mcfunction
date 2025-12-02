# Überträgt 1 Minute Spielzeit und normalisiert überschüssige Ticks
scoreboard players remove @s pt_tick 1200
scoreboard players add @s pt_min 1

# Wiederholung, falls mehr als eine Minute aufgelaufen ist
execute if score @s pt_tick matches 1200.. run function playtime:minute

# Stundenberechnung anstoßen
execute if score @s pt_min matches 60.. run function playtime:hour

# Sidebar-Aktualisierung (auch ohne volle Stunde)
function playtime:update_total_hours
