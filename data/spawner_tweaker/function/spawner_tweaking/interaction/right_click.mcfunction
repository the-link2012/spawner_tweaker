#Happens when you right click to modify spawner properties

#Bells and wistles
execute as @a[tag=st_holding_ticking] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

#Most regular modifications
execute if score setting temp matches 1 store result score temp temp run data get storage spawner_tweaker:temp spawner.SpawnCount
execute if score setting temp matches 1 store result block ~ ~ ~ SpawnCount short 1 run scoreboard players add temp temp 1

execute if score setting temp matches 2 store result score temp temp run data get storage spawner_tweaker:temp spawner.MaxNearbyEntities
execute if score setting temp matches 2 store result block ~ ~ ~ MaxNearbyEntities short 1 run scoreboard players add temp temp 1

execute if score setting temp matches 3 store result score temp temp run data get storage spawner_tweaker:temp spawner.SpawnRange
execute if score setting temp matches 3 store result block ~ ~ ~ SpawnRange short 1 run scoreboard players add temp temp 1

execute if score setting temp matches 4 store result score temp temp run data get storage spawner_tweaker:temp spawner.RequiredPlayerRange
execute if score setting temp matches 4 store result block ~ ~ ~ RequiredPlayerRange short 1 run scoreboard players add temp temp 1

#Delay Logic
execute if score setting temp matches 5 store result score temp temp run data get storage spawner_tweaker:temp spawner.MinSpawnDelay
execute if score setting temp matches 5 store result block ~ ~ ~ MinSpawnDelay short 1 run scoreboard players add temp temp 10
execute if score setting temp matches 5 store result score temp temp run data get storage spawner_tweaker:temp spawner.MaxSpawnDelay
execute if score setting temp matches 5 store result block ~ ~ ~ MaxSpawnDelay short 1 run scoreboard players add temp temp 10

#Light logic (block)
execute if score setting temp matches 6 unless data storage spawner_tweaker:temp spawner.SpawnPotentials[0].data.custom_spawn_rules.block_light_limit[1] run data modify block ~ ~ ~ SpawnPotentials[0].data.custom_spawn_rules.block_light_limit set value [I;0,1]
execute if score setting temp matches 6 unless data storage spawner_tweaker:temp spawner.SpawnPotentials[0].data.custom_spawn_rules.block_light_limit[1] run data modify block ~ ~ ~ SpawnPotentials[1].data.custom_spawn_rules.block_light_limit set value [I;0,1]
execute if score setting temp matches 6 unless data storage spawner_tweaker:temp spawner.SpawnPotentials[0].data.custom_spawn_rules.block_light_limit[1] run data modify block ~ ~ ~ SpawnPotentials[2].data.custom_spawn_rules.block_light_limit set value [I;0,1]
execute if score setting temp matches 6 unless data storage spawner_tweaker:temp spawner.SpawnPotentials[0].data.custom_spawn_rules.block_light_limit[1] run data modify block ~ ~ ~ SpawnPotentials[3].data.custom_spawn_rules.block_light_limit set value [I;0,1]
execute if score setting temp matches 6 unless data storage spawner_tweaker:temp spawner.SpawnPotentials[0].data.custom_spawn_rules.block_light_limit[1] run data modify block ~ ~ ~ SpawnData.custom_spawn_rules.block_light_limit set value [I;0,1]
execute if score setting temp matches 6 store result score temp temp run data get storage spawner_tweaker:temp spawner.SpawnPotentials[0].data.custom_spawn_rules.block_light_limit[1]
execute if score setting temp matches 6 store result block ~ ~ ~ SpawnPotentials[0].data.custom_spawn_rules.block_light_limit[1] short 1 run scoreboard players add temp temp 1
execute if score setting temp matches 6 store result block ~ ~ ~ SpawnPotentials[1].data.custom_spawn_rules.block_light_limit[1] short 1 run scoreboard players get temp temp
execute if score setting temp matches 6 store result block ~ ~ ~ SpawnPotentials[2].data.custom_spawn_rules.block_light_limit[1] short 1 run scoreboard players get temp temp
execute if score setting temp matches 6 store result block ~ ~ ~ SpawnPotentials[3].data.custom_spawn_rules.block_light_limit[1] short 1 run scoreboard players get temp temp
execute if score setting temp matches 6 store result block ~ ~ ~ SpawnData.custom_spawn_rules.block_light_limit[1] short 1 run scoreboard players get temp temp

#Light logic (sky)
execute if score setting temp matches 7 unless data storage spawner_tweaker:temp spawner.SpawnPotentials[0].data.custom_spawn_rules.sky_light_limit[1] run data modify block ~ ~ ~ SpawnPotentials[0].data.custom_spawn_rules.sky_light_limit set value [I;0,1]
execute if score setting temp matches 7 unless data storage spawner_tweaker:temp spawner.SpawnPotentials[0].data.custom_spawn_rules.sky_light_limit[1] run data modify block ~ ~ ~ SpawnPotentials[1].data.custom_spawn_rules.sky_light_limit set value [I;0,1]
execute if score setting temp matches 7 unless data storage spawner_tweaker:temp spawner.SpawnPotentials[0].data.custom_spawn_rules.sky_light_limit[1] run data modify block ~ ~ ~ SpawnPotentials[2].data.custom_spawn_rules.sky_light_limit set value [I;0,1]
execute if score setting temp matches 7 unless data storage spawner_tweaker:temp spawner.SpawnPotentials[0].data.custom_spawn_rules.sky_light_limit[1] run data modify block ~ ~ ~ SpawnPotentials[3].data.custom_spawn_rules.sky_light_limit set value [I;0,1]
execute if score setting temp matches 7 unless data storage spawner_tweaker:temp spawner.SpawnPotentials[0].data.custom_spawn_rules.sky_light_limit[1] run data modify block ~ ~ ~ SpawnData.custom_spawn_rules.sky_light_limit set value [I;0,1]
execute if score setting temp matches 7 store result score temp temp run data get storage spawner_tweaker:temp spawner.SpawnPotentials[0].data.custom_spawn_rules.sky_light_limit[1]
execute if score setting temp matches 7 store result block ~ ~ ~ SpawnPotentials[0].data.custom_spawn_rules.sky_light_limit[1] short 1 run scoreboard players add temp temp 1
execute if score setting temp matches 7 store result block ~ ~ ~ SpawnPotentials[1].data.custom_spawn_rules.sky_light_limit[1] short 1 run scoreboard players get temp temp
execute if score setting temp matches 7 store result block ~ ~ ~ SpawnPotentials[2].data.custom_spawn_rules.sky_light_limit[1] short 1 run scoreboard players get temp temp
execute if score setting temp matches 7 store result block ~ ~ ~ SpawnPotentials[3].data.custom_spawn_rules.sky_light_limit[1] short 1 run scoreboard players get temp temp
execute if score setting temp matches 7 store result block ~ ~ ~ SpawnData.custom_spawn_rules.sky_light_limit[1] short 1 run scoreboard players get temp temp
