#Executes the command on the spawner

#Running the actual command
scoreboard players set ran_command temp 0
function spawner_tweaker:run_function/execute_command with storage spawner_tweaker:temp run_function

#Remove junk data
#Basically, spawners don't need spawnpotentials. So if only 1 exists, get rid of it.
scoreboard players set different temp 1
scoreboard players set count temp 0
execute store result score count temp if data block ~ ~ ~ SpawnPotentials[]
execute if score count temp matches 1.. unless score $data_population spawner_tweaker matches 1 run data modify block ~ ~ ~ SpawnData set value {}
execute if score count temp matches 1 run data modify storage spawner_tweaker:temp same set from block ~ ~ ~ SpawnPotentials[0].data
execute if score count temp matches 1 store success score different temp run data modify storage spawner_tweaker:temp same set from block ~ ~ ~ SpawnData
execute if score efficient_data spawner_tweaker matches 1.. if score $data_population spawner_tweaker matches 1 if score count temp matches 1 if score different temp matches 0 run data remove block ~ ~ ~ SpawnPotentials[]

#Killing unneeded displays
execute align xyz positioned ~0.5 ~0.8 ~0.5 run kill @e[distance=..1,limit=1,sort=nearest,tag=st_id_display]

#Remove Data if the spawner isn't there
scoreboard players set remove temp 0
execute unless block ~ ~ ~ spawner run scoreboard players set remove temp 1
$execute if score remove temp matches 1.. run data remove storage spawner_tweaker:temp Spawners[{dimension:"$(dimension)",x:$(x),y:$(y),z:$(z)}]

#Visualization
execute if score force_load temp matches 0 positioned ~ ~ ~ align xyz positioned ~0.499 ~0.499 ~0.499 run kill @e[distance=..0.1,limit=1,sort=nearest,tag=st_primer,type=item_display]
execute if score force_load temp matches 0 if score glow_ticks st_priming matches 1.. positioned ~ ~ ~ align xyz run summon item_display ~0.499 ~0.499 ~0.499 {Tags:["st_primer"],Glowing:1b,width:100f,height:100f,interpolation_duration:2,teleport_duration:2,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.02f,1.02f,1.02f]},item:{id:"minecraft:tinted_glass",count:1b}}
execute positioned ~ ~ ~ align xyz positioned ~0.5 ~0.5 ~0.5 run team join spawner_tweaker_dark_green @e[distance=..1,limit=1,sort=nearest,tag=st_primer,type=item_display]
execute if score efficient_data spawner_tweaker matches 1.. if score count temp matches 1 if score different temp matches 0 positioned ~ ~ ~ align xyz positioned ~0.5 ~0.5 ~0.5 run team join spawner_tweaker_yellow @e[distance=..1,limit=1,sort=nearest,tag=st_primer,type=item_display]
execute if score remove temp matches 1.. positioned ~ ~ ~ align xyz positioned ~0.5 ~0.5 ~0.5 run team join spawner_tweaker_red @e[distance=..1,limit=1,sort=nearest,tag=st_primer,type=item_display]
execute if score ran_command temp matches 0 positioned ~ ~ ~ align xyz positioned ~0.5 ~0.5 ~0.5 run team join spawner_tweaker_dark_red @e[distance=..1,limit=1,sort=nearest,tag=st_primer,type=item_display]

execute if score force_load temp matches 0 positioned ~ ~ ~ align xyz positioned ~0.499 ~0.499 ~0.499 run scoreboard players operation @e[distance=..1,limit=1,sort=nearest,tag=st_primer,type=item_display] prime_spawners = glow_ticks st_priming
execute if score force_load temp matches 0 positioned ~ ~ ~ align xyz positioned ~0.499 ~0.499 ~0.499 run scoreboard players operation @e[distance=..1,limit=1,sort=nearest,tag=st_primer,type=item_display] prime_spawners *= -1 numbers
execute if score force_load temp matches 0 positioned ~ ~ ~ align xyz positioned ~0.499 ~0.499 ~0.499 run scoreboard players add @e[distance=..1,limit=1,sort=nearest,tag=st_primer,type=item_display] prime_spawners 60


#Remove storage and incriment count
execute if score ran_command temp matches 0 run scoreboard players add failed_function st_priming 1
scoreboard players add functions_executed st_priming 1
$data modify storage spawner_tweaker:temp Priming[$(n)].completed set value 1b
