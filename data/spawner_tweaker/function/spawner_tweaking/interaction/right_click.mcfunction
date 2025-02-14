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
execute if score setting temp matches 5 store result score min_delay temp run data get storage spawner_tweaker:temp spawner.MinSpawnDelay
execute if score setting temp matches 5 store result score max_delay temp run data get storage spawner_tweaker:temp spawner.MaxSpawnDelay

execute if entity @s[tag=st_delay_lc] run scoreboard players set @p[tag=st_holding_ticking] spawner_tweaker_delay 0
execute if score setting temp matches 5 run scoreboard players add @p[tag=st_holding_ticking] spawner_tweaker_delay 20
scoreboard players operation delay temp = @p[tag=st_holding_ticking] spawner_tweaker_delay
scoreboard players operation delay temp /= 20 numbers
scoreboard players operation delay temp *= 20 numbers

scoreboard players operation ratio temp = max_delay temp
scoreboard players operation ratio temp *= 100 numbers
scoreboard players operation ratio temp /= min_delay temp
scoreboard players operation ratio temp *= delay temp
scoreboard players operation ratio temp /= 100 numbers

scoreboard players operation min_delay temp += delay temp
scoreboard players operation max_delay temp += ratio temp

execute if score min_delay temp matches ..0 run scoreboard players set min_delay temp 0
execute if score max_delay temp matches ..0 run scoreboard players set max_delay temp 0

execute if score setting temp matches 5 store result block ~ ~ ~ MinSpawnDelay short 1 run scoreboard players get min_delay temp
execute if score setting temp matches 5 store result block ~ ~ ~ MaxSpawnDelay short 1 run scoreboard players get max_delay temp

tag @s add st_delay_rc
tag @s remove st_delay_lc

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
