# Fügt die Gesamtminuten-Anzeige hinzu und aktualisiert Konstanten
scoreboard objectives add pt_total_minutes dummy {"text":"Spielzeit (Gesamtminuten)"}
scoreboard players set #minutes_per_hour pt_const 60

# Sidebar zeigt künftig Gesamtminuten, list/belowname bleiben frei
scoreboard objectives setdisplay sidebar pt_total_minutes {"text":"Spielzeit (Gesamtminuten)"}
scoreboard objectives setdisplay list
scoreboard objectives setdisplay belowname

# Bestehende Spieler erhalten sofort aktualisierte Werte
execute as @a run function playtime:update_total_hours

data modify storage playtime:state version set value 4
