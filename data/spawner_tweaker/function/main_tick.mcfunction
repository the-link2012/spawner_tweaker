#Central ticking for the spawner tweaker datapack

#Branching
execute as @a[gamemode=creative] at @s run function spawner_tweaker:player_tick
#Redo priming vvvv
execute if entity @a[limit=1,scores={prime_spawners=-999..}] run function spawner_tweaker:spawner_priming/tick
execute as @a[tag=st_holding_spawner] at @s run function spawner_tweaker:spawner_tweaking/player/holding_spawner
