#Loop around, if relevant
scoreboard players add z temp 1
scoreboard players set x temp 0
scoreboard players add n temp 1
execute if score n temp matches 10000.. run return 0
$execute unless score z temp >= box_size temp positioned ~$(box_size) ~ ~-1 run function spawner_tweaker:spawner_tweaking/light/loop_x with storage spawner_tweaker:temp spawner
execute if score z temp >= box_size temp if score y temp <= 3 numbers positioned ~ ~ ~-1 run function spawner_tweaker:spawner_tweaking/light/loop_y with storage spawner_tweaker:temp spawner