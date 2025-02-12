#Raycasting to find spawner
execute if block ~ ~ ~ spawner run function spawner_tweaker:spawner_tweaking/player/found_spawner
execute if score n temp matches ..197 if entity @s[tag=st_marking] if score swap_spawner spawner_tweaker matches 1 run particle dust 0.286 1 0.192 1 ~ ~ ~ 0 0 0 1 1 force @s
execute if score n temp matches ..197 if entity @s[tag=st_marking] if score swap_spawner spawner_tweaker matches 5 run particle dust 0.557 1 0.192 1 ~ ~ ~ 0 0 0 1 1 force @s
execute if score n temp matches ..197 if entity @s[tag=st_marking] if score swap_spawner spawner_tweaker matches 10 run particle dust 0.718 1 0.192 1 ~ ~ ~ 0 0 0 1 1 force @s
execute if score n temp matches ..197 if entity @s[tag=st_marking] if score swap_spawner spawner_tweaker matches 15 run particle dust 1 0.851 0.192 1 ~ ~ ~ 0 0 0 1 1 force @s
execute if score n temp matches ..197 if entity @s[tag=st_marking] if score swap_spawner spawner_tweaker matches 19 run particle dust 1 0.353 0.192 1 ~ ~ ~ 0 0 0 1 1 force @s

#Count down and iterate
scoreboard players remove n temp 1
execute if score n temp matches 0 run tag @s remove st_marking
execute if score n temp matches 1.. positioned ^ ^ ^0.5 run function spawner_tweaker:spawner_tweaking/player/raycast