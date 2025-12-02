# Berechnet die Gesamtspielzeit in Stunden und Minuten für die Sidebar
scoreboard players operation @s pt_total_hours = @s pt_day
scoreboard players operation @s pt_total_hours *= #hours_per_day pt_const
scoreboard players operation @s pt_total_hours += @s pt_hr

scoreboard players operation @s pt_total_minutes = @s pt_total_hours
scoreboard players operation @s pt_total_minutes *= #minutes_per_hour pt_const
scoreboard players operation @s pt_total_minutes += @s pt_min
