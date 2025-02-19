#Do one step of the spawner updatingpriming process

##MAIN PROCESS
#Loop through the spawners to check if loaded. If not, load. If loaded, update and mark completed
execute if score $modification_limit spawner_tweaker matches ..1 run scoreboard players set $modification_limit spawner_tweaker 1
scoreboard players set n temp 0
data modify storage spawner_tweaker:temp BSE[0].n set value 0
data modify storage spawner_tweaker:temp BSE[0].next set value 1
function spawner_tweaker:bulk_edit/attempt_edit with storage spawner_tweaker:temp BSE[0]
data remove storage spawner_tweaker:temp BSE[{completed:1b}]

#Displays
scoreboard players add @e[tag=st_primer,type=item_display] prime_spawners 1
kill @e[tag=st_primer,type=item_display,scores={prime_spawners=60..}]

#Inciment timer and display
scoreboard players add bse_timer st_priming 1
title @a actionbar [{"text":"Spawners updated ","color":"gray"},{"score":{"name":"spawners_updated","objective":"st_priming"},"color":"red"},{"text":"/"},{"score":{"name":"total_spawners","objective":"st_priming"},"color":"green"}]

#End when needed
execute if score spawners_updated st_priming >= total_spawners st_priming run function spawner_tweaker:bulk_edit/end
scoreboard players operation max temp = total_spawners st_priming
scoreboard players operation max temp *= 2 numbers
scoreboard players add max temp 20
execute if score bse_timer st_priming >= max temp run function spawner_tweaker:bulk_edit/end