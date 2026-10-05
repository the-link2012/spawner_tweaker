#Enter the loop for testing blocks for light
#I am definately not doing this right, but whatever. I haven't mapped in a hot minute

#Set up variables
scoreboard players set y temp 0
scoreboard players set x temp 0
scoreboard players set z temp 0
scoreboard players operation spawner_tweaker_id temp = @s spawner_tweaker_id
execute store result score light1 temp run data get storage spawner_tweaker:temp spawner.SpawnPotentials[0].data.custom_spawn_rules.block_light_limit[1]
execute store result score light2 temp run data get storage spawner_tweaker:temp spawner.SpawnPotentials[0].data.custom_spawn_rules.sky_light_limit[1]
execute if score light1 temp matches 0 run scoreboard players set light1 temp 99
execute if score light2 temp matches 0 run scoreboard players set light2 temp 99

scoreboard players operation light temp = light1 temp
execute if score light2 temp <= light1 temp run scoreboard players operation light temp = light2 temp

#Refuse to enter loop if area is too big
scoreboard players operation temp temp = box_size temp
scoreboard players operation temp temp *= temp temp
scoreboard players operation temp temp *= 3 numbers
execute if score temp temp matches 1000.. as @e[tag=st_box_light] if score @s spawner_tweaker_id = spawner_tweaker_id temp run kill @s

#Enter the loop
execute unless score box_size temp matches 2.. positioned ~ ~-1 ~ run function spawner_tweaker:spawner_tweaking/light/loop_x with storage spawner_tweaker:temp spawner
$execute if score box_size temp matches 2.. positioned ~$(SpawnRange) ~-1 ~$(SpawnRange) run function spawner_tweaker:spawner_tweaking/light/loop_x with storage spawner_tweaker:temp spawner
