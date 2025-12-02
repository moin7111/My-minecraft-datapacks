scoreboard players enable @a creative_enter
scoreboard players enable @a creative_exit

execute as @a[scores={creative_enter=1..}] run function creative_dim:teleport/enter
execute as @a[scores={creative_exit=1..}] run function creative_dim:teleport/exit

scoreboard players set @a[scores={creative_enter=1..}] creative_enter 0
scoreboard players set @a[scores={creative_exit=1..}] creative_exit 0

execute as @a[dimension=creative_dim:creative_flat,gamemode=!creative] run gamemode creative @s
execute as @a[dimension=!creative_dim:creative_flat,scores={cdim_inside=1..}] run scoreboard players set @s cdim_inside 0
