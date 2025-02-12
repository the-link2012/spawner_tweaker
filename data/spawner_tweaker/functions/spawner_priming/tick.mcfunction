#Do one step of the spawner priming process

#Initiate if needed
execute if score spawners_primed spawner_tweaker matches ..-1 run function spawner_tweaker:spawner_priming/initiate

#Main process
execute if score spawners_primed spawner_tweaker matches 0.. run function spawner_tweaker:spawner_priming/prime_spawner with storage spawner_tweaker:temp Priming[0]
data modify storage spawner_tweaker:temp Priming[0].x set from storage spawner_tweaker:temp Priming[0].Pos[0]
data modify storage spawner_tweaker:temp Priming[0].y set from storage spawner_tweaker:temp Priming[0].Pos[1]
data modify storage spawner_tweaker:temp Priming[0].z set from storage spawner_tweaker:temp Priming[0].Pos[2]
execute store result storage spawner_tweaker:temp Priming[0].x2 int 1 run data get storage spawner_tweaker:temp Priming[0].Pos[0]
execute store result storage spawner_tweaker:temp Priming[0].y2 int 1 run data get storage spawner_tweaker:temp Priming[0].Pos[1]
execute store result storage spawner_tweaker:temp Priming[0].z2 int 1 run data get storage spawner_tweaker:temp Priming[0].Pos[2]
execute if score prime_timer prime_spawners matches 1 run function spawner_tweaker:spawner_priming/prep_spawner with storage spawner_tweaker:temp Priming[0]

#Displays
scoreboard players add @e[tag=st_primer,type=item_display] prime_spawners 1
kill @e[tag=st_primer,type=item_display,scores={prime_spawners=60..}]

#Inciment counter
scoreboard players add spawners_primed spawner_tweaker 1
title @a actionbar [{"text":"Spawners primed ","color":"gray"},{"score":{"name":"spawners_primed","objective":"spawner_tweaker"},"color":"red"},{"text":"/"},{"score":{"name":"total_spawners","objective":"spawner_tweaker"},"color":"green"}]

#End if needed
execute if score spawners_primed spawner_tweaker >= total_spawners spawner_tweaker run function spawner_tweaker:spawner_priming/end
