#Ends the priming process
title @a actionbar [{"text":"Spawners primed ","color":"gray"},{"score":{"name":"spawners_primed","objective":"spawner_tweaker"},"color":"green"},{"text":"/"},{"score":{"name":"total_spawners","objective":"spawner_tweaker"},"color":"green"}]

scoreboard players set @a prime_spawners -1000
scoreboard players set spawners_primed spawner_tweaker -1

#Killing displays
execute if entity @e[tag=st_primer,type=item_display,limit=1] run schedule function spawner_tweaker:spawner_priming/kill_displays 1t