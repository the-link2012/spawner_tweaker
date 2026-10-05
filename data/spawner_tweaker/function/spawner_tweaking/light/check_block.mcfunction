#Check to see if the block is spawnable

#Get light, if necessary
scoreboard players set pass temp 1
execute if score light temp matches 99 run scoreboard players set pass temp 0
execute unless score pass temp matches 0 run function spawner_tweaker:spawner_tweaking/light/getlight

execute if score lightcall temp < light temp run scoreboard players set pass temp 0

#If light is greater, run effect
execute if score pass temp matches 0 as @e[distance=..0.1,tag=st_box_light,limit=1,sort=nearest] if score @s spawner_tweaker_id = spawner_tweaker_id temp run kill @s
execute if score pass temp matches 0 run return fail
execute if entity @s[tag=st_light_particle] run particle minecraft:dust{color:[1.000,1.000,0.090],scale:1} ~ ~ ~ 0 0 0 0 2 force
execute if entity @s[tag=st_light_particle] run return 1

execute if entity @e[distance=..0.1,tag=st_box_light] if entity @s[tag=st_light_box] as @e[distance=..0.1,tag=st_box_light,limit=1,sort=nearest] run function spawner_tweaker:spawner_tweaking/light/transform_torch
execute unless entity @e[distance=..0.1,tag=st_box_light] if entity @s[tag=st_light_box] run summon block_display ~ ~ ~ {interpolation_duration:12,teleport_duration:12,start_interpolation:0,view_range:100f,width:100f,height:100f,Tags:["st_display","st_box_light"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.01f,-0.01f,-0.01f],scale:[0.02f,0.02f,0.02f]},block_state:{id:"minecraft:torch"}}
scoreboard players operation @e[distance=..0.1,tag=st_box_light] spawner_tweaker_id = @s spawner_tweaker_id
