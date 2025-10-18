#Fixes the data of old spawners and chests

#Fix data
$data modify storage spawner_tweaker:temp Spawners[$(n)].x set from storage spawner_tweaker:temp Spawners[$(n)].Pos[0]
$data modify storage spawner_tweaker:temp Spawners[$(n)].y set from storage spawner_tweaker:temp Spawners[$(n)].Pos[1]
$data modify storage spawner_tweaker:temp Spawners[$(n)].z set from storage spawner_tweaker:temp Spawners[$(n)].Pos[2]


#Loop
scoreboard players add n temp 1
execute store result storage spawner_tweaker:temp temp.loop.n int 1 run scoreboard players get n temp
execute store result storage spawner_tweaker:temp temp.loop.n1 int 1 run scoreboard players add n temp 1
scoreboard players remove n temp 1

$execute if data storage spawner_tweaker:temp Spawners[$(n1)] run function spawner_tweaker:register/fix_old/loop with storage spawner_tweaker:temp temp.loop
