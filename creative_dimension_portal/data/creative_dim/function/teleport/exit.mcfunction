execute unless score @s cdim_inside matches 1 run tellraw @s {"text":"Du bist nicht in der Kreativ-Dimension.","color":"red"}
execute unless score @s cdim_inside matches 1 run scoreboard players set @s creative_exit 0
execute if score @s cdim_inside matches 1 run function creative_dim:teleport/exit_body
