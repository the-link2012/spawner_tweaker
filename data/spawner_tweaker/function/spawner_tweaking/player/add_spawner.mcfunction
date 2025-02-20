#Allows you to select multiple spawners at once

##Most of this is identicle to found spawner
#Give the player a tag for optimization reasons
tag @s add st_tweaking

#Write spawndata to spawnpotentials if none exist
execute unless data block ~ ~ ~ SpawnPotentials[0] run tag @s add tweaker_data_replace
execute if entity @s[tag=tweaker_data_replace] run data modify storage spawner_tweaker:temp SpawnData set value [{data:{entity:{id:"minecraft:item"}},weight:1}]
execute if entity @s[tag=tweaker_data_replace] run data modify storage spawner_tweaker:temp SpawnData[0].data set from block ~ ~ ~ SpawnData
execute if entity @s[tag=tweaker_data_replace] run data modify block ~ ~ ~ SpawnPotentials set from storage spawner_tweaker:temp SpawnData
tag @s remove tweaker_data_replace

#Registering the spawner
function spawner_tweaker:register/register_base

#Spawn new displays
tag @s add st_multiple_select
function spawner_tweaker:spawner_tweaking/spawn_displays
tag @s remove st_multiple_select

#Creating bossbar
$bossbar remove spawner_tweaker_$(tweaker_id)
data modify storage spawner_tweaker:temp name set value {}
data modify storage spawner_tweaker:temp name.tweaker_id set from storage spawner_tweaker:temp variables.tweaker_id
execute store result storage spawner_tweaker:temp name.id int 1 run scoreboard players get id temp
scoreboard players set spawners temp 0
$execute as @e[tag=st_glass,scores={spawner_tweaker_id=$(tweaker_id)}] run scoreboard players add spawners temp 1
execute store result storage spawner_tweaker:temp name.spawners int 1 run scoreboard players get spawners temp
function spawner_tweaker:spawner_tweaking/player/bossbars/multiple with storage spawner_tweaker:temp name

#sound
execute at @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 1
scoreboard players set @s st_swap 0
