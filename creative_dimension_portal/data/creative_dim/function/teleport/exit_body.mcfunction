scoreboard players operation #cdim_return_target cdim_uid = @s cdim_uid
scoreboard players operation #cdim_return_dim cdim_dim = @s cdim_dim
scoreboard players set #cdim_return_success cdim_flag 0

execute as @e[type=minecraft:marker,tag=creative_dim.return_marker] if score @s cdim_uid = #cdim_return_target cdim_uid run function creative_dim:teleport/send_home
execute if score #cdim_return_success cdim_flag matches 0 run function creative_dim:teleport/fallback

execute if score @s cdim_gm matches 0 run gamemode survival @s
execute if score @s cdim_gm matches 1 run gamemode creative @s
execute if score @s cdim_gm matches 2 run gamemode adventure @s
execute if score @s cdim_gm matches 3 run gamemode spectator @s

scoreboard players set @s cdim_inside 0
scoreboard players set @s cdim_dim 0
scoreboard players set @s creative_exit 0
