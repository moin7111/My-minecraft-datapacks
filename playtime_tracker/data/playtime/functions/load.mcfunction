# Initialisiert das Datapack beim Laden oder /reload
execute unless data storage playtime:state {initialized:1b} run function playtime:setup
