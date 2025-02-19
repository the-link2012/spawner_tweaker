#Happens on and at the spawner that should be bulk edited
#spawner_tweaker:temp update_to

#Read the current light levels
data modify storage spawner_tweaker:temp spawner set value {}
data modify storage spawner_tweaker:temp spawner set from block ~ ~ ~

#Editing most attributes
execute if score $st_ongoing_process temp matches 2..3 run data modify block ~ ~ ~ SpawnData set from storage spawner_tweaker:temp update_to.SpawnPotentials[0].data
execute if score $st_ongoing_process temp matches 2..3 run data modify block ~ ~ ~ SpawnPotentials set from storage spawner_tweaker:temp update_to.SpawnPotentials
execute if score $st_ongoing_process temp matches 3 run data modify block ~ ~ ~ RequiredPlayerRange set from storage spawner_tweaker:temp update_to.RequiredPlayerRange
execute if score $st_ongoing_process temp matches 3 run data modify block ~ ~ ~ MaxNearbyEntities set from storage spawner_tweaker:temp update_to.MaxNearbyEntities
execute if score $st_ongoing_process temp matches 3 run data modify block ~ ~ ~ Delay set from storage spawner_tweaker:temp update_to.Delay
execute if score $st_ongoing_process temp matches 3 run data modify block ~ ~ ~ MaxSpawnDelay set from storage spawner_tweaker:temp update_to.MaxSpawnDelay
execute if score $st_ongoing_process temp matches 3 run data modify block ~ ~ ~ MinSpawnDelay set from storage spawner_tweaker:temp update_to.MinSpawnDelay
execute if score $st_ongoing_process temp matches 3 run data modify block ~ ~ ~ SpawnCount set from storage spawner_tweaker:temp update_to.SpawnCount
execute if score $st_ongoing_process temp matches 3 run data modify block ~ ~ ~ SpawnRange set from storage spawner_tweaker:temp update_to.SpawnRange

#Remove junk data
#Basically, spawners don't need spawnpotentials. So if only 1 exists, get rid of it.
scoreboard players set different temp 1
scoreboard players set count temp 0
execute store result score count temp if data block ~ ~ ~ SpawnPotentials[]
execute if score count temp matches 1 run data modify storage spawner_tweaker:temp same set from block ~ ~ ~ SpawnPotentials[0].data
execute if score count temp matches 1 store success score different temp run data modify storage spawner_tweaker:temp same set from block ~ ~ ~ SpawnData
execute if score $efficient_data spawner_tweaker matches 1.. if score count temp matches 1 if score different temp matches 0 run data remove block ~ ~ ~ SpawnPotentials[]

#Writing a random spawn potential
execute store result storage spawner_tweaker:temp variables.count int 1 run scoreboard players get count temp
execute if score count temp matches 2.. run function spawner_tweaker:bulk_edit/choose_random_potential with storage spawner_tweaker:temp variables

#Writing back the light levels
execute if score $st_ongoing_process temp matches 2 run data modify block ~ ~ ~ SpawnData.custom_spawn_rules set from storage spawner_tweaker:temp spawner.SpawnData.custom_spawn_rules
execute if score $st_ongoing_process temp matches 2 run data modify block ~ ~ ~ SpawnPotentials[0].data.custom_spawn_rules set from storage spawner_tweaker:temp spawner.SpawnData.custom_spawn_rules
execute if score $st_ongoing_process temp matches 2 run data modify block ~ ~ ~ SpawnPotentials[1].data.custom_spawn_rules set from storage spawner_tweaker:temp spawner.SpawnData.custom_spawn_rules
execute if score $st_ongoing_process temp matches 2 run data modify block ~ ~ ~ SpawnPotentials[2].data.custom_spawn_rules set from storage spawner_tweaker:temp spawner.SpawnData.custom_spawn_rules
execute if score $st_ongoing_process temp matches 2 run data modify block ~ ~ ~ SpawnPotentials[3].data.custom_spawn_rules set from storage spawner_tweaker:temp spawner.SpawnData.custom_spawn_rules
execute if score $st_ongoing_process temp matches 2 run data modify block ~ ~ ~ SpawnPotentials[4].data.custom_spawn_rules set from storage spawner_tweaker:temp spawner.SpawnData.custom_spawn_rules
execute if score $st_ongoing_process temp matches 2 run data modify block ~ ~ ~ SpawnPotentials[5].data.custom_spawn_rules set from storage spawner_tweaker:temp spawner.SpawnData.custom_spawn_rules
execute if score $st_ongoing_process temp matches 2 run data modify block ~ ~ ~ SpawnPotentials[6].data.custom_spawn_rules set from storage spawner_tweaker:temp spawner.SpawnData.custom_spawn_rules
execute if score $st_ongoing_process temp matches 2 run data modify block ~ ~ ~ SpawnPotentials[7].data.custom_spawn_rules set from storage spawner_tweaker:temp spawner.SpawnData.custom_spawn_rules
execute if score $st_ongoing_process temp matches 2 run data modify block ~ ~ ~ SpawnPotentials[8].data.custom_spawn_rules set from storage spawner_tweaker:temp spawner.SpawnData.custom_spawn_rules

#Remove Data if the spawner isn't there
scoreboard players set remove temp 0
execute unless block ~ ~ ~ spawner run scoreboard players set remove temp 1
$execute if score remove temp matches 1.. run data remove storage spawner_tweaker:temp Spawners[{dimension:"$(dimension)",Pos:$(Pos)}]

#Bells and wistles
execute if score force_load temp matches 0 positioned ~ ~ ~ align xyz run summon item_display ~0.5 ~0.5 ~0.5 {Tags:["st_primer"],Glowing:1b,width:100f,height:100f,interpolation_duration:2,teleport_duration:2,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:glass",Count:1b}}
execute positioned ~ ~ ~ align xyz positioned ~0.5 ~0.5 ~0.5 run team join spawner_tweaker_green @e[distance=..1,limit=1,sort=nearest,tag=st_primer,type=item_display]
execute if score $efficient_data spawner_tweaker matches 1.. if score count temp matches 1 if score different temp matches 0 positioned ~ ~ ~ align xyz positioned ~0.5 ~0.5 ~0.5 run team join spawner_tweaker_yellow @e[distance=..1,limit=1,sort=nearest,tag=st_primer,type=item_display]
execute if score remove temp matches 1.. positioned ~ ~ ~ align xyz positioned ~0.5 ~0.5 ~0.5 run team join spawner_tweaker_red @e[distance=..1,limit=1,sort=nearest,tag=st_primer,type=item_display]
execute if score remove temp matches 1.. positioned ~ ~ ~ align xyz positioned ~0.5 ~0.8 ~0.5 run kill @e[distance=..1,limit=1,sort=nearest,tag=st_id_display]

#Remove storage and incriment count
scoreboard players add spawners_updated st_priming 1
$data modify storage spawner_tweaker:temp BSE[$(n)].completed set value 1b