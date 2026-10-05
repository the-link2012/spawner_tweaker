#Loop to check every block

#Checking relevant blocks and doing effects
execute unless block ~ ~ ~ #minecraft:causes_suffocation run function spawner_tweaker:spawner_tweaking/light/check_block

#Looping pooping
scoreboard players add x temp 1
scoreboard players add n temp 1
execute if score n temp matches 10000.. run return 0
execute unless score x temp >= box_size temp positioned ~-1 ~ ~ run function spawner_tweaker:spawner_tweaking/light/loop_x with storage spawner_tweaker:temp spawner
execute if score x temp >= box_size temp if score z temp <= box_size temp positioned ~-1 ~ ~ run function spawner_tweaker:spawner_tweaking/light/loop_z with storage spawner_tweaker:temp spawner