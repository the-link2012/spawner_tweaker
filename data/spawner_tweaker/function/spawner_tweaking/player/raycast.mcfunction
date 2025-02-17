#Raycasting to find spawner
execute if block ~ ~ ~ spawner run function spawner_tweaker:spawner_tweaking/player/found_spawner with storage spawner_tweaker:temp variables
execute if score n temp matches ..197 if entity @s[tag=st_marking,predicate=!spawner_tweaker:shifting] if score swap_spawner temp matches 1 run particle dust{color:[0.286,1.000,0.192],scale:1} ~ ~ ~ 0 0 0 1 1 force @s
execute if score n temp matches ..197 if entity @s[tag=st_marking,predicate=!spawner_tweaker:shifting] if score swap_spawner temp matches 5 run particle dust{color:[0.557,1.000,0.192],scale:1} ~ ~ ~ 0 0 0 1 1 force @s
execute if score n temp matches ..197 if entity @s[tag=st_marking,predicate=!spawner_tweaker:shifting] if score swap_spawner temp matches 10 run particle dust{color:[0.718,1.000,0.192],scale:1} ~ ~ ~ 0 0 0 1 1 force @s
execute if score n temp matches ..197 if entity @s[tag=st_marking,predicate=!spawner_tweaker:shifting] if score swap_spawner temp matches 15 run particle dust{color:[1.000,0.851,0.192],scale:1} ~ ~ ~ 0 0 0 1 1 force @s
execute if score n temp matches ..197 if entity @s[tag=st_marking,predicate=!spawner_tweaker:shifting] if score swap_spawner temp matches 19 run particle dust{color:[1.000,0.353,0.192],scale:1} ~ ~ ~ 0 0 0 1 1 force @s
execute if score n temp matches ..197 if entity @s[tag=st_marking,predicate=spawner_tweaker:shifting] run particle electric_spark ^ ^-0.15 ^ 0.02 0.02 0.02 0 1 force @s

#Count down and iterate
scoreboard players remove n temp 1
execute if score n temp matches 0 run tag @s remove st_marking
execute if score n temp matches 1.. if entity @s[tag=st_no_pierce] if block ~ ~ ~ #spawner_tweaker:raycastable positioned ^ ^ ^0.5 run function spawner_tweaker:spawner_tweaking/player/raycast
execute if score n temp matches 1.. unless entity @s[tag=st_no_pierce] positioned ^ ^ ^0.5 run function spawner_tweaker:spawner_tweaking/player/raycast