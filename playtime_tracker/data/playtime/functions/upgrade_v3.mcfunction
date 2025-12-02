# Fügt das Gesamtstunden-Scoreboard hinzu und setzt neue Defaults
scoreboard objectives add pt_total_hours dummy {"text":"Gesamtspielzeit (Stunden)"}
scoreboard players set #hours_per_day pt_const 24
scoreboard objectives setdisplay sidebar pt_total_hours {"text":"Spielzeit (Gesamtstunden)"}
scoreboard objectives setdisplay list
scoreboard objectives setdisplay belowname

# Bestehende Spieler erhalten sofort korrekte Stundenwerte
execute as @a run function playtime:update_total_hours

data modify storage playtime:state version set value 3
