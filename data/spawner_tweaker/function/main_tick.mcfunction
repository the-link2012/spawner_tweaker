#Central ticking for the spawner tweaker datapack

#Setup needed variables
function spawner_tweaker:load
scoreboard players enable @a[gamemode=creative] prime_spawners
scoreboard players set @a[tag=!st_init] prime_spawners -1000
tag @a[tag=!st_init] add st_init

#Priming spawners
execute if entity @a[limit=1,scores={prime_spawners=-999..}] run function spawner_tweaker:spawner_priming/tick

#Checks to see if someone's in creative, if so, look for someone that might be ready to engage in GAMING
execute if entity @a[limit=1,gamemode=!adventure,gamemode=!survival,tag=holding_spawner] as @a[tag=holding_spawner] at @s run function spawner_tweaker:spawner_tweaking/player/holding_spawner
execute if entity @a[limit=1,gamemode=!adventure,gamemode=!survival] unless entity @a[tag=holding_spawner,limit=1] as @a[limit=1,sort=arbitrary,nbt={SelectedItem:{id:"minecraft:spawner"}},predicate=!spawner_tweaker:sneaking] at @s run function spawner_tweaker:spawner_tweaking/player/holding_spawner

#If nobody is currently holding a spawner, unload anything that needs unloading
execute if score loaded spawner_tweaker matches 1 if score holding_spawner spawner_tweaker matches 0 run function spawner_tweaker:unload
scoreboard players set holding_spawner spawner_tweaker 0

