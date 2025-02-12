#Happens when you right click

#Detect sneaking
scoreboard players set sneak temp 0
execute if entity @a[tag=holding_spawner,predicate=spawner_tweaker:sneaking] run scoreboard players set sneak temp 1

##Output

#Incrimenting settings
execute if score sneak temp matches 1.. run scoreboard players add setting spawner_tweaker 1
execute if score sneak temp matches 1.. if score setting spawner_tweaker matches 8.. run scoreboard players set setting spawner_tweaker 1
execute if score sneak temp matches 1.. as @a[tag=holding_spawner] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1

#Regular modifications
execute unless score sneak temp matches 1.. as @a[tag=holding_spawner] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 1 store result score temp temp run data get storage spawner_tweaker:temp spawner.SpawnCount
execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 1 at 38e349da-d05c-47c9-85c5-dad3300233dc store result block ~ ~ ~ SpawnCount short 1 run scoreboard players add temp temp 1

execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 2 store result score temp temp run data get storage spawner_tweaker:temp spawner.MaxNearbyEntities
execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 2 at 38e349da-d05c-47c9-85c5-dad3300233dc store result block ~ ~ ~ MaxNearbyEntities short 1 run scoreboard players add temp temp 1

execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 3 store result score temp temp run data get storage spawner_tweaker:temp spawner.SpawnRange
execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 3 at 38e349da-d05c-47c9-85c5-dad3300233dc store result block ~ ~ ~ SpawnRange short 1 run scoreboard players add temp temp 1

execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 4 store result score temp temp run data get storage spawner_tweaker:temp spawner.RequiredPlayerRange
execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 4 at 38e349da-d05c-47c9-85c5-dad3300233dc store result block ~ ~ ~ RequiredPlayerRange short 1 run scoreboard players add temp temp 1

execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 5 store result score temp temp run data get storage spawner_tweaker:temp spawner.MinSpawnDelay
execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 5 at 38e349da-d05c-47c9-85c5-dad3300233dc store result block ~ ~ ~ MinSpawnDelay short 1 run scoreboard players add temp temp 10
execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 5 store result score temp temp run data get storage spawner_tweaker:temp spawner.MaxSpawnDelay
execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 5 at 38e349da-d05c-47c9-85c5-dad3300233dc store result block ~ ~ ~ MaxSpawnDelay short 1 run scoreboard players add temp temp 10

execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 6 unless data storage spawner_tweaker:temp spawner.SpawnPotentials[0].data.custom_spawn_rules.block_light_limit[1] at 38e349da-d05c-47c9-85c5-dad3300233dc run data modify block ~ ~ ~ SpawnPotentials[0].data.custom_spawn_rules.block_light_limit set value [I;0,1]
execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 6 unless data storage spawner_tweaker:temp spawner.SpawnPotentials[0].data.custom_spawn_rules.block_light_limit[1] at 38e349da-d05c-47c9-85c5-dad3300233dc run data modify block ~ ~ ~ SpawnPotentials[1].data.custom_spawn_rules.block_light_limit set value [I;0,1]
execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 6 unless data storage spawner_tweaker:temp spawner.SpawnPotentials[0].data.custom_spawn_rules.block_light_limit[1] at 38e349da-d05c-47c9-85c5-dad3300233dc run data modify block ~ ~ ~ SpawnPotentials[2].data.custom_spawn_rules.block_light_limit set value [I;0,1]
execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 6 unless data storage spawner_tweaker:temp spawner.SpawnPotentials[0].data.custom_spawn_rules.block_light_limit[1] at 38e349da-d05c-47c9-85c5-dad3300233dc run data modify block ~ ~ ~ SpawnPotentials[3].data.custom_spawn_rules.block_light_limit set value [I;0,1]
execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 6 unless data storage spawner_tweaker:temp spawner.SpawnPotentials[0].data.custom_spawn_rules.block_light_limit[1] at 38e349da-d05c-47c9-85c5-dad3300233dc run data modify block ~ ~ ~ SpawnData.custom_spawn_rules.block_light_limit set value [I;0,1]
execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 6 store result score temp temp run data get storage spawner_tweaker:temp spawner.SpawnPotentials[0].data.custom_spawn_rules.block_light_limit[1]
execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 6 at 38e349da-d05c-47c9-85c5-dad3300233dc store result block ~ ~ ~ SpawnPotentials[0].data.custom_spawn_rules.block_light_limit[1] short 1 run scoreboard players add temp temp 1
execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 6 at 38e349da-d05c-47c9-85c5-dad3300233dc store result block ~ ~ ~ SpawnPotentials[1].data.custom_spawn_rules.block_light_limit[1] short 1 run scoreboard players get temp temp
execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 6 at 38e349da-d05c-47c9-85c5-dad3300233dc store result block ~ ~ ~ SpawnPotentials[2].data.custom_spawn_rules.block_light_limit[1] short 1 run scoreboard players get temp temp
execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 6 at 38e349da-d05c-47c9-85c5-dad3300233dc store result block ~ ~ ~ SpawnPotentials[3].data.custom_spawn_rules.block_light_limit[1] short 1 run scoreboard players get temp temp
execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 6 at 38e349da-d05c-47c9-85c5-dad3300233dc store result block ~ ~ ~ SpawnData.custom_spawn_rules.block_light_limit[1] short 1 run scoreboard players get temp temp

execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 7 unless data storage spawner_tweaker:temp spawner.SpawnPotentials[0].data.custom_spawn_rules.sky_light_limit[1] at 38e349da-d05c-47c9-85c5-dad3300233dc run data modify block ~ ~ ~ SpawnPotentials[0].data.custom_spawn_rules.sky_light_limit set value [I;0,1]
execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 7 unless data storage spawner_tweaker:temp spawner.SpawnPotentials[0].data.custom_spawn_rules.sky_light_limit[1] at 38e349da-d05c-47c9-85c5-dad3300233dc run data modify block ~ ~ ~ SpawnPotentials[1].data.custom_spawn_rules.sky_light_limit set value [I;0,1]
execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 7 unless data storage spawner_tweaker:temp spawner.SpawnPotentials[0].data.custom_spawn_rules.sky_light_limit[1] at 38e349da-d05c-47c9-85c5-dad3300233dc run data modify block ~ ~ ~ SpawnPotentials[2].data.custom_spawn_rules.sky_light_limit set value [I;0,1]
execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 7 unless data storage spawner_tweaker:temp spawner.SpawnPotentials[0].data.custom_spawn_rules.sky_light_limit[1] at 38e349da-d05c-47c9-85c5-dad3300233dc run data modify block ~ ~ ~ SpawnPotentials[3].data.custom_spawn_rules.sky_light_limit set value [I;0,1]
execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 7 unless data storage spawner_tweaker:temp spawner.SpawnPotentials[0].data.custom_spawn_rules.sky_light_limit[1] at 38e349da-d05c-47c9-85c5-dad3300233dc run data modify block ~ ~ ~ SpawnData.custom_spawn_rules.sky_light_limit set value [I;0,1]
execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 7 store result score temp temp run data get storage spawner_tweaker:temp spawner.SpawnPotentials[0].data.custom_spawn_rules.sky_light_limit[1]
execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 7 at 38e349da-d05c-47c9-85c5-dad3300233dc store result block ~ ~ ~ SpawnPotentials[0].data.custom_spawn_rules.sky_light_limit[1] short 1 run scoreboard players add temp temp 1
execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 7 at 38e349da-d05c-47c9-85c5-dad3300233dc store result block ~ ~ ~ SpawnPotentials[1].data.custom_spawn_rules.sky_light_limit[1] short 1 run scoreboard players get temp temp
execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 7 at 38e349da-d05c-47c9-85c5-dad3300233dc store result block ~ ~ ~ SpawnPotentials[2].data.custom_spawn_rules.sky_light_limit[1] short 1 run scoreboard players get temp temp
execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 7 at 38e349da-d05c-47c9-85c5-dad3300233dc store result block ~ ~ ~ SpawnPotentials[3].data.custom_spawn_rules.sky_light_limit[1] short 1 run scoreboard players get temp temp
execute unless score sneak temp matches 1.. if score setting spawner_tweaker matches 7 at 38e349da-d05c-47c9-85c5-dad3300233dc store result block ~ ~ ~ SpawnData.custom_spawn_rules.sky_light_limit[1] short 1 run scoreboard players get temp temp
