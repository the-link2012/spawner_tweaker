#Happens when a raycast bumps into a spawner

#Already selected a spawner!
execute if entity 38e349da-d05c-47c9-85c5-dad3300233dc run tag @s add st_marking
execute align xyz if entity @e[dx=0,dy=0,dz=0,tag=st_display] run tag @s remove st_marking
execute if entity 38e349da-d05c-47c9-85c5-dad3300233dc run scoreboard players add swap_spawner spawner_tweaker 1
execute if entity 38e349da-d05c-47c9-85c5-dad3300233dc if score swap_spawner spawner_tweaker matches 22.. align xyz positioned ~0.5 ~0.5 ~0.5 run function spawner_tweaker:spawner_tweaking/player/select_spawner

#If no spawner is selected
execute unless entity 38e349da-d05c-47c9-85c5-dad3300233dc align xyz positioned ~0.5 ~0.5 ~0.5 run function spawner_tweaker:spawner_tweaking/player/select_spawner

#End raycasting
scoreboard players set n temp -999
execute unless entity @s[tag=st_marking] run scoreboard players set swap_spawner spawner_tweaker 0