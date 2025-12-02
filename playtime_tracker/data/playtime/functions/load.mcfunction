# Initialisiert oder aktualisiert das Datapack beim Laden oder /reload
execute unless data storage playtime:state {initialized:1b} run function playtime:setup
execute unless data storage playtime:state {version:2} run function playtime:upgrade_v2
execute unless data storage playtime:state {version:3} run function playtime:upgrade_v3

# Anzeigeplätze zurücksetzen (nur Sidebar aktiv)
scoreboard objectives setdisplay sidebar pt_total_hours {"text":"Spielzeit (Gesamtstunden)"}
scoreboard objectives setdisplay list
scoreboard objectives setdisplay belowname

# Konstanten sicherheitshalber zurücksetzen
scoreboard players set #minute pt_const 1200
scoreboard players set #hour pt_const 72000
scoreboard players set #day pt_const 1728000
scoreboard players set #hours_per_day pt_const 24

# Spielern mit vorhandener Spielzeit sofort Werte importieren und aktuelle Stunden berechnen
execute as @a unless entity @s[scores={pt_import=1}] run function playtime:import
execute as @a run function playtime:update_total_hours
