scoreboard players set #cdim_return_success cdim_flag 1

execute as @a if score @s cdim_uid = #cdim_return_target cdim_uid run execute in minecraft:overworld run tp @s 0.5 120.0 0.5
execute as @a if score @s cdim_uid = #cdim_return_target cdim_uid run tellraw @s {"text":"Rücksetzpunkt nicht gefunden – du wurdest zum Welt-Spawn bewegt.","color":"gold"}
execute as @e[type=minecraft:marker,tag=creative_dim.return_marker] if score @s cdim_uid = #cdim_return_target cdim_uid run kill @s
