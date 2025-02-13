#Central ticking for the spawner tweaker datapack

#Setup needed variables
scoreboard players enable @a[gamemode=creative] prime_spawners
scoreboard players set @a[tag=!st_init] prime_spawners -1000
tag @a[tag=!st_init] add st_init

#Priming spawners
execute if entity @a[limit=1,scores={prime_spawners=-999..}] run function spawner_tweaker:spawner_priming/tick

#Checking to see who needs to get ticked for spawnwer tweaking
tag @a[gamemode=!adventure,gamemode=!survival,tag=!st_holding_spawner,predicate=!spawner_tweaker:shifting,nbt={SelectedItem:{id:"minecraft:spawner"}}] add st_holding_spawner
execute as @a[tag=st_holding_spawner] at @s run function spawner_tweaker:spawner_tweaking/player/holding_spawner
