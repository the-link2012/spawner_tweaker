#Loop around, if relevant
scoreboard players set z temp 0
scoreboard players set x temp 0
scoreboard players add y temp 1
scoreboard players add n temp 1
execute if score n temp matches 10000.. run return 0
$execute unless score y temp >= 3 numbers positioned ~$(box_size) ~1 ~$(box_size) run function spawner_tweaker:spawner_tweaking/light/loop_x with storage spawner_tweaker:temp spawner
