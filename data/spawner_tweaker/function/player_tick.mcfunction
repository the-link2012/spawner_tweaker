#20hz on creative mode players

#Initialization
scoreboard players set @s[tag=!st_init] prime_spawners -1000
scoreboard players set @s[tag=!st_init] give_spawner -1000
tag @s[tag=!st_init] add st_init

#Enabling triggers
scoreboard players enable @s prime_spawners
scoreboard players enable @s toggle_spawner_tweaker
scoreboard players enable @s toggle_piercing_spawner_tweaker
scoreboard players enable @s give_spawner
scoreboard players enable @s give_all_spawners

#Running triggers
execute unless score @s toggle_spawner_tweaker matches -999 run function spawner_tweaker:toggle_tweaking
execute unless score @s toggle_piercing_spawner_tweaker matches ..0 run function spawner_tweaker:toggle_block_pierce

#Seeing if this player is holding a spwner and should be ticking
tag @s[tag=!st_holding_spawner,predicate=!spawner_tweaker:shifting,tag=!st_disabled,nbt={SelectedItem:{id:"minecraft:spawner"}}] add st_holding_spawner
