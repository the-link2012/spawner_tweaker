#Happens when a raycast bumps into a spawner

#Already selected a spawner!
$execute if entity @n[tag=st_glass,scores={spawner_tweaker_id=$(tweaker_id)}] run tag @s add st_marking
execute align xyz if entity @e[dx=0,dy=0,dz=0,tag=st_display] run tag @s remove st_marking
execute if entity @s[tag=st_marking] run scoreboard players add swap_spawner spawner_tweaker 1
execute if score swap_spawner spawner_tweaker matches 22.. align xyz positioned ~0.5 ~0.5 ~0.5 run function spawner_tweaker:spawner_tweaking/player/select_spawner with storage spawner_tweaker:temp variables

#If no spawner is selected
$execute unless entity @n[tag=st_glass,scores={spawner_tweaker_id=$(tweaker_id)}] align xyz positioned ~0.5 ~0.5 ~0.5 run function spawner_tweaker:spawner_tweaking/player/select_spawner with storage spawner_tweaker:temp variables

#End raycasting
scoreboard players set n temp -999
execute unless entity @s[tag=st_marking] run scoreboard players set swap_spawner spawner_tweaker 0