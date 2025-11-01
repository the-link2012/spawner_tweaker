#Ends the priming process
execute if score functions_executed st_priming >= total_spawners st_priming run title @a actionbar [{"text":"Functions executed ","color":"gray"},{"score":{"name":"functions_executed","objective":"st_priming"},"color":"green"},{"text":"/"},{"score":{"name":"total_spawners","objective":"st_priming"},"color":"green"}]
execute unless score functions_executed st_priming >= total_spawners st_priming run title @a actionbar [{"text":"Functions executed ","color":"gray"},{"score":{"name":"functions_executed","objective":"st_priming"},"color":"dark_red"},{"text":"/"},{"score":{"name":"total_spawners","objective":"st_priming"},"color":"red"}]
execute unless score functions_executed st_priming >= total_spawners st_priming run tellraw @a {"color":"red","italic":false,"text":"Something went wrong so the operation was cancelled."}
execute unless score functions_executed st_priming >= total_spawners st_priming as @a at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1

#Codes for if commands were executed
execute if score failed_function st_priming matches 1.. run scoreboard players operation difference temp = total_spawners st_priming
execute if score failed_function st_priming matches 1.. run scoreboard players operation difference temp -= failed_function st_priming
execute if score functions_executed st_priming >= total_spawners st_priming if score failed_function st_priming matches 0 run tellraw @a {"color":"green","text":"All commands executed successfully"}
execute if score functions_executed st_priming >= total_spawners st_priming unless score failed_function st_priming matches 0 if score failed_function st_priming < total_spawners st_priming run tellraw @a [{"color":"red","score":{"name":"difference","objective":"temp"}},{"color":"gray","text":"/"},{"color":"green","score":{"name":"total_spawners","objective":"st_priming"}},{"color":"yellow","text":" commands were able to run successfully"}]
execute if score functions_executed st_priming >= total_spawners st_priming unless score failed_function st_priming matches 0 unless score failed_function st_priming < total_spawners st_priming run tellraw @a {"color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Make sure you don't have a \"/\"","color":"red"}]},"text":"No commands executed properly, check your format!"}

scoreboard players set failed_function st_priming 0
scoreboard players set function_timer st_priming 0
scoreboard players set @a prime_spawners -999
scoreboard players set functions_executed st_priming -1
scoreboard players set $st_ongoing_process temp 0
scoreboard players set $highlight_id spawner_tweaker -1
scoreboard players set $modification_range spawner_tweaker -1

#Killing displays
execute if entity @e[tag=st_primer,type=item_display,limit=1] run schedule function spawner_tweaker:spawner_priming/kill_displays 1t