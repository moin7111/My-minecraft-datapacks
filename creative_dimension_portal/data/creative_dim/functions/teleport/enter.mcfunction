execute if score @s cdim_inside matches 1 run tellraw @s {"text":"Du bist bereits in der Kreativ-Dimension. Nutze /trigger creative_exit zum Verlassen.","color":"yellow"}
execute if score @s cdim_inside matches 1 run scoreboard players set @s creative_enter 0
execute unless score @s cdim_inside matches 1 run function creative_dim:teleport/enter_body
