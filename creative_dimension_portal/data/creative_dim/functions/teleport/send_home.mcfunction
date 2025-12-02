scoreboard players set #cdim_return_success cdim_flag 1

execute if score #cdim_return_dim cdim_dim matches 0 run function creative_dim:teleport/return_overworld
execute if score #cdim_return_dim cdim_dim matches -1 run function creative_dim:teleport/return_nether
execute if score #cdim_return_dim cdim_dim matches 1 run function creative_dim:teleport/return_end
execute unless score #cdim_return_dim cdim_dim matches -1..1 run function creative_dim:teleport/return_overworld

execute as @a if score @s cdim_uid = #cdim_return_target cdim_uid run tellraw @s {"text":"Du wurdest wieder an deinen Startpunkt gesetzt.","color":"green"}

kill @s
