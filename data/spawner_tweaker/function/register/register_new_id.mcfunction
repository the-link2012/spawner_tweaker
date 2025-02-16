#Happens when a spawner needs to be registered under a new id
scoreboard players set id temp 0
execute store result score id temp if data storage spawner_tweaker:temp Ids[{}]
data modify storage spawner_tweaker:temp id set value {id:0,SpawnPotentials:[]}
execute store result storage spawner_tweaker:temp id.id int 1 run scoreboard players get id temp
$data modify storage spawner_tweaker:temp id.SpawnPotentials set value $(SpawnPotentials)
data remove storage spawner_tweaker:temp id.SpawnPotentials[0].data.custom_spawn_rules
data remove storage spawner_tweaker:temp id.SpawnPotentials[1].data.custom_spawn_rules
data remove storage spawner_tweaker:temp id.SpawnPotentials[2].data.custom_spawn_rules
data remove storage spawner_tweaker:temp id.SpawnPotentials[3].data.custom_spawn_rules
data remove storage spawner_tweaker:temp id.SpawnPotentials[4].data.custom_spawn_rules
data remove storage spawner_tweaker:temp id.SpawnPotentials[5].data.custom_spawn_rules
data remove storage spawner_tweaker:temp id.SpawnPotentials[6].data.custom_spawn_rules
data remove storage spawner_tweaker:temp id.SpawnPotentials[7].data.custom_spawn_rules
data remove storage spawner_tweaker:temp id.SpawnPotentials[8].data.custom_spawn_rules
data modify storage spawner_tweaker:temp Ids append from storage spawner_tweaker:temp id

#Bells and wistles
playsound minecraft:block.trial_spawner.spawn_mob master @s ~ ~ ~ 1 0.8
playsound item.firecharge.use master @s ~ ~ ~ 0.8 0.5

scoreboard players set said_name temp 0
execute if score said_name temp matches 0 if data block ~ ~ ~ components."minecraft:custom_name" store success score said_name temp run tellraw @s [{"color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"Bulk Spawner Editor ID for grouping similar spawners"}]},"text":"BSE ID Registered "},{"color":"gray","text":"["},{"color":"gray","text":"ID:"},{"color":"gold","score":{"name":"id","objective":"temp"}},{"color":"gray","text":"] - "},{"block":"~ ~ ~","color":"yellow","nbt":"components.\"minecraft:custom_name\""}]
execute if score said_name temp matches 0 if data block ~ ~ ~ SpawnPotentials[0].data.entity.CustomName store success score said_name temp run function spawner_tweaker:register/give_name with block ~ ~ ~ SpawnPotentials[0].data.entity
execute if score said_name temp matches 0 store success score said_name temp run tellraw @s [{"color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"Bulk Spawner Editor ID for grouping similar spawners"}]},"text":"BSE ID Registered "},{"color":"gray","text":"["},{"color":"gray","text":"ID:"},{"color":"gold","score":{"name":"id","objective":"temp"}},{"color":"gray","text":"] - "},{"block":"~ ~ ~","color":"green","nbt":"SpawnPotentials[0].data.entity.id"}]

scoreboard players set y temp -90
scoreboard players set x temp 0
execute align xyz positioned ~0.5 ~0.5 ~0.5 rotated 0 -90 run function spawner_tweaker:register/register_particle_loop