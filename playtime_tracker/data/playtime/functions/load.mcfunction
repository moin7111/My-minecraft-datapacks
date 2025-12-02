# Initialisiert oder aktualisiert das Datapack beim Laden oder /reload
execute unless data storage playtime:state {initialized:1b} run function playtime:setup
execute unless data storage playtime:state {version:2} run function playtime:upgrade_v2

# Anzeigeplätze jedes Mal setzen (falls ein Admin sie verändert hat)
scoreboard objectives setdisplay sidebar pt_day {"text":"Spielzeit (Tage)"}
scoreboard objectives setdisplay list pt_hr {"text":"Spielzeit (Stunden)"}
scoreboard objectives setdisplay belowname pt_min {"text":"Spielzeit (Minuten)"}

# Konstanten sicherheitshalber zurücksetzen
scoreboard players set #minute pt_const 1200
scoreboard players set #hour pt_const 72000
scoreboard players set #day pt_const 1728000

# Spielern mit vorhandener Spielzeit sofort Werte importieren
execute as @a unless entity @s[scores={pt_import=1}] run function playtime:import
