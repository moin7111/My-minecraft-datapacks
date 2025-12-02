# Stellt sicher, dass vorhandene Spielzeit einmalig importiert wurde
execute unless entity @s[scores={pt_import=1}] run function playtime:import

# Zählt die Spielzeit jedes Spielers in Ticks und startet Minutenauswertung
scoreboard players add @s pt_tick 1
execute if score @s pt_tick matches 1200.. run function playtime:minute
