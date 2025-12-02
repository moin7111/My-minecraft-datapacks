# Berechnet die Gesamtspielzeit in Stunden für die Sidebar
scoreboard players operation @s pt_total_hours = @s pt_day
scoreboard players operation @s pt_total_hours *= #hours_per_day pt_const
scoreboard players operation @s pt_total_hours += @s pt_hr
