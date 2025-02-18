#Central ticking for the spawner tweaker datapack

#Failsafe for dummies
execute if score $search_range spawner_tweaker matches 15.. run scoreboard players set $search_range spawner_tweaker 15

#Branching
execute as @a[gamemode=creative] at @s run function spawner_tweaker:player_tick
execute if score timer st_priming matches 1.. run function spawner_tweaker:spawner_priming/tick
execute as @a[tag=st_holding_spawner] at @s run function spawner_tweaker:spawner_tweaking/player/holding_spawner
