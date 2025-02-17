#Ends the priming process
title @a actionbar [{"text":"Spawners primed ","color":"gray"},{"score":{"name":"spawners_primed","objective":"st_priming"},"color":"green"},{"text":"/"},{"score":{"name":"total_spawners","objective":"st_priming"},"color":"green"}]

scoreboard players set timer st_priming 0
scoreboard players set @a prime_spawners -999
scoreboard players set spawners_primed st_priming -1
scoreboard players set ongoing_process spawner_tweaker 0

#Killing displays
execute if entity @e[tag=st_primer,type=item_display,limit=1] run schedule function spawner_tweaker:spawner_priming/kill_displays 1t