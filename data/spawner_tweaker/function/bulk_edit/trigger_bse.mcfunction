#Triggering a bulk spawner edit at a specific position

scoreboard players set loaded temp 0
execute if loaded ~ ~ ~ run scoreboard players set loaded temp 1
execute if score loaded temp matches 0 run tellraw @s {"color":"red","italic":false,"text":"Please make sure the spawner is loaded"}
execute if score loaded temp matches 0 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1
execute if score loaded temp matches 0 run return 2

execute if score $st_ongoing_process temp matches 1.. run tellraw @s {"color":"red","italic":false,"text":"Please wait until the current process is finished"}
execute if score $st_ongoing_process temp matches 1.. run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1
execute if score $st_ongoing_process temp matches 1.. run return 1

scoreboard players set $st_ongoing_process temp 3

execute align xyz positioned ~0.5 ~0.5 ~0.5 run function spawner_tweaker:bulk_edit/initiate with block ~ ~ ~