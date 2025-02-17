#Run this at a position to register the spawner into the id and priming systems

#Getting the relevant positioning information
summon marker ~ ~ ~ {UUID:[I;-44439381,467092815,-2143523091,-286623066]}
data modify storage spawner_tweaker:temp Spawner set value {Pos:[0.0d,0.0d,0.0d],dimension:"minecraft:overworld"}
data modify storage spawner_tweaker:temp Spawner.Pos set from entity fd59e8ab-1bd7-454f-803c-6eedeeea7aa6 Pos
data modify storage spawner_tweaker:temp Spawner.dimension set from entity @s Dimension
kill fd59e8ab-1bd7-454f-803c-6eedeeea7aa6

#Checking if a spawner already exists here
data modify storage spawner_tweaker:temp Comparison set value {}
function spawner_tweaker:register/check_spawner with storage spawner_tweaker:temp Spawner

#If a spawner does exist, grab the physical spawner's id to compare
scoreboard players set old_id temp -1
execute if score exists temp matches 1.. store result score old_id temp run data get storage spawner_tweaker:temp Comparison.id
scoreboard players set id temp -1

scoreboard players set register_new temp 1
data modify storage spawner_tweaker:temp physical_spawner set value {SpawnPotentials:[]}
data modify storage spawner_tweaker:temp physical_spawner.SpawnPotentials set from block ~ ~ ~ SpawnPotentials
data remove storage spawner_tweaker:temp physical_spawner.SpawnPotentials[0].data.custom_spawn_rules
data remove storage spawner_tweaker:temp physical_spawner.SpawnPotentials[1].data.custom_spawn_rules
data remove storage spawner_tweaker:temp physical_spawner.SpawnPotentials[2].data.custom_spawn_rules
data remove storage spawner_tweaker:temp physical_spawner.SpawnPotentials[3].data.custom_spawn_rules
data remove storage spawner_tweaker:temp physical_spawner.SpawnPotentials[4].data.custom_spawn_rules
data remove storage spawner_tweaker:temp physical_spawner.SpawnPotentials[5].data.custom_spawn_rules
data remove storage spawner_tweaker:temp physical_spawner.SpawnPotentials[6].data.custom_spawn_rules
data remove storage spawner_tweaker:temp physical_spawner.SpawnPotentials[7].data.custom_spawn_rules
data remove storage spawner_tweaker:temp physical_spawner.SpawnPotentials[8].data.custom_spawn_rules
data modify storage spawner_tweaker:temp compare_ids set value []
data modify storage spawner_tweaker:temp compare_ids set from storage spawner_tweaker:temp Ids
scoreboard players set n temp 0
scoreboard players set not_new temp 1
execute store result score n temp if data storage spawner_tweaker:temp Ids[{}]
execute if score n temp matches 1.. run function spawner_tweaker:register/compare_ids
execute if score not_new temp matches 0 run scoreboard players set register_new temp 0

#If a spawner here exists, and this is a new id, ask if it ought to be registered
execute if score exists temp matches 1 if score not_new temp matches 1 run tellraw @s[tag=!st_searching] "Prompt BSE"

#Automatically register this as a new id if it isn't where a previous spawner was
execute if score exists temp matches 0 store result storage spawner_tweaker:temp Spawner.id int 1 run scoreboard players get id temp
execute if score exists temp matches 0 if score register_new temp matches 1 run function spawner_tweaker:register/register_new_id with block ~ ~ ~
execute if score exists temp matches 0 run function spawner_tweaker:spawner_priming/prune with storage spawner_tweaker:temp Spawner
execute if score exists temp matches 0 run data modify storage spawner_tweaker:temp Spawners prepend from storage spawner_tweaker:temp Spawner
execute if score exists temp matches 0 if score not_new temp matches 0 run particle minecraft:trial_spawner_detection ~ ~ ~ 0.7 0.7 0.7 0 20 force @s
execute if score exists temp matches 0 if score not_new temp matches 0 run particle minecraft:trial_spawner_detection ~ ~ ~ 0.7 0.7 0.7 0 20 normal @s
execute if score exists temp matches 0 if score not_new temp matches 0 run playsound minecraft:block.trial_spawner.detect_player master @s ~ ~ ~ 1 0.8

#If a spawner is here, but it just needs an updated id, do that.
execute if score exists temp matches 1 if score not_new temp matches 0 store result storage spawner_tweaker:temp Spawner.id int 1 run scoreboard players get id temp
execute if score exists temp matches 1 if score not_new temp matches 0 run function spawner_tweaker:spawner_priming/prune with storage spawner_tweaker:temp Spawner
execute if score exists temp matches 1 if score not_new temp matches 0 run data modify storage spawner_tweaker:temp Spawners prepend from storage spawner_tweaker:temp Spawner