#Compares a spawner to existing ids to find out if it exists or not.
data remove storage spawner_tweaker:temp compare_ids[0].id

scoreboard players set not_new temp 0
execute store success score not_new temp run data modify storage spawner_tweaker:temp compare_ids[0] set from storage spawner_tweaker:temp physical_spawner

scoreboard players add id temp 1
data remove storage spawner_tweaker:temp compare_ids[0]
scoreboard players remove n temp 1
execute if score not_new temp matches 1.. if score n temp matches 1.. run function spawner_tweaker:register/compare_ids