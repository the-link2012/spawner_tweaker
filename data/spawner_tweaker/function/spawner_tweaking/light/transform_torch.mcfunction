#Makes the torch have some fun

#Kill switch
schedule function spawner_tweaker:spawner_priming/kill_torches 1t
scoreboard players set @s prime_spawners 0

#Transformation
execute store result score random temp run random value 1..10
execute if score random temp matches 8.. run scoreboard players add @s[tag=!st_invert] spawner_tweaker_delay 8
execute if score random temp matches 8.. run scoreboard players remove @s[tag=st_invert] spawner_tweaker_delay 8

scoreboard players add @s[tag=!st_invert] spawner_tweaker_delay 10
scoreboard players remove @s[tag=st_invert] spawner_tweaker_delay 10
execute if score @s spawner_tweaker_delay matches 70.. run tag @s add st_invert
execute if score @s spawner_tweaker_delay matches ..0 run tag @s remove st_invert

scoreboard players set scale temp 100
scoreboard players operation scale temp += @s spawner_tweaker_delay

data modify storage spawner_tweaker:temp temp.transformation set value {offset:0,offset_y:0,scale:0,rotate:0}
execute store result storage spawner_tweaker:temp temp.transformation.scale float 0.005 run scoreboard players get scale temp

execute store result storage spawner_tweaker:temp temp.transformation.offset_y float -0.0005 run data get storage spawner_tweaker:temp temp.transformation.scale 800
execute store result storage spawner_tweaker:temp temp.transformation.offset float -0.0005 run data get storage spawner_tweaker:temp temp.transformation.scale 1000
function spawner_tweaker:spawner_tweaking/light/transformation with storage spawner_tweaker:temp temp.transformation
