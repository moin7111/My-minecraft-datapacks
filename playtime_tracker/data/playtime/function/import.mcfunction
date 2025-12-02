# Importiert die vorhandene Vanilla-Spielzeit eines Spielers
scoreboard players operation @s pt_calc = @s pt_stat

# Ganze Tage
scoreboard players operation @s pt_day = @s pt_calc
scoreboard players operation @s pt_day /= #day pt_const

# Restliche Stunden (0-23)
scoreboard players operation @s pt_hr = @s pt_calc
scoreboard players operation @s pt_hr %= #day pt_const
scoreboard players operation @s pt_hr /= #hour pt_const

# Restliche Minuten (0-59)
scoreboard players operation @s pt_min = @s pt_calc
scoreboard players operation @s pt_min %= #hour pt_const
scoreboard players operation @s pt_min /= #minute pt_const

# Restliche Ticks (0-1199)
scoreboard players operation @s pt_tick = @s pt_calc
scoreboard players operation @s pt_tick %= #minute pt_const

# Gesamtstunden für die Sidebar berechnen
function playtime:update_total_hours

# Spieler muss nicht erneut importiert werden
scoreboard players set @s pt_import 1
