#Central ticking for the spawner tweaker datapack

#Setup needed variables
scoreboard players enable @a[gamemode=creative] prime_spawners
scoreboard players enable @a[gamemode=creative] disable_spawner_tweaker
scoreboard players enable @a[gamemode=creative] give_all_spawners
scoreboard players set @a[tag=!st_init] prime_spawners -1000
tag @a[tag=!st_init] add st_init

#Triggers
execute if entity @a[limit=1,scores={prime_spawners=-999..}] run function spawner_tweaker:spawner_priming/tick
execute as @a[gamemode=creative] unless score @s disable_spawner_tweaker matches -999 run function spawner_tweaker:toggle

#Checking to see who needs to get ticked for spawnwer tweaking
tag @a[gamemode=!adventure,gamemode=!survival,tag=!st_holding_spawner,predicate=!spawner_tweaker:shifting,tag=!st_disabled,nbt={SelectedItem:{id:"minecraft:spawner"}}] add st_holding_spawner
execute as @a[tag=st_holding_spawner] at @s run function spawner_tweaker:spawner_tweaking/player/holding_spawner
