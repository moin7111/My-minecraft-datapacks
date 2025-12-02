execute if score @s cdim_uid matches 0 run scoreboard players add #cdim_uid_counter cdim_uid 1
execute if score @s cdim_uid matches 0 run scoreboard players operation @s cdim_uid = #cdim_uid_counter cdim_uid

scoreboard players set @s cdim_inside 1

execute if entity @s[gamemode=survival] run scoreboard players set @s cdim_gm 0
execute if entity @s[gamemode=creative] run scoreboard players set @s cdim_gm 1
execute if entity @s[gamemode=adventure] run scoreboard players set @s cdim_gm 2
execute if entity @s[gamemode=spectator] run scoreboard players set @s cdim_gm 3

execute if entity @s[dimension=minecraft:overworld] run scoreboard players set @s cdim_dim 0
execute if entity @s[dimension=minecraft:the_nether] run scoreboard players set @s cdim_dim -1
execute if entity @s[dimension=minecraft:the_end] run scoreboard players set @s cdim_dim 1
execute unless entity @s[dimension=minecraft:overworld] unless entity @s[dimension=minecraft:the_nether] unless entity @s[dimension=minecraft:the_end] run scoreboard players set @s cdim_dim 0

summon minecraft:marker ~ ~ ~ {Tags:["creative_dim.return_marker"],Invulnerable:1b}
scoreboard players operation @e[type=minecraft:marker,tag=creative_dim.return_marker,sort=nearest,limit=1] cdim_uid = @s cdim_uid
data modify entity @e[type=minecraft:marker,tag=creative_dim.return_marker,sort=nearest,limit=1] Rotation set from entity @s Rotation

gamemode creative @s
execute in creative_dim:creative_flat run tp @s 0.5 80.0 0.5
tellraw @s {"text":"Du befindest dich nun in der flachen Kreativ-Dimension. Nutze /trigger creative_exit um zurückzukehren.","color":"green"}
