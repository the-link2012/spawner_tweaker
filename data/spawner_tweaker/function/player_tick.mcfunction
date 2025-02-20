#20hz on creative mode players

#Initialization
execute store result score @s[tag=!st_init] st_search run random value 1..20
scoreboard players set @s[tag=!st_init] prime_spawners -1000
scoreboard players set @s[tag=!st_init] give_spawner -1000
scoreboard players set @s[tag=!st_init] delete_spawner_id -1
tag @s[tag=!st_init] add st_init

#Enabling triggers
scoreboard players enable @s prime_spawners
scoreboard players enable @s toggle_spawner_tweaker
scoreboard players enable @s toggle_piercing_spawner_tweaker
scoreboard players enable @s give_spawner
scoreboard players enable @s give_all_spawners
scoreboard players enable @s delete_spawner_id
scoreboard players enable @s highlight_spawners

#Running triggers
execute unless score @s delete_spawner_id matches ..-1 store result storage spawner_tweaker:temp variables.id int 1 run scoreboard players get @s delete_spawner_id
execute unless score @s delete_spawner_id matches ..-1 run function spawner_tweaker:register/remove_id with storage spawner_tweaker:temp variables
execute unless score @s prime_spawners matches ..-999 run function spawner_tweaker:spawner_priming/initiate
execute unless score @s toggle_spawner_tweaker matches -999 run function spawner_tweaker:toggle_tweaking
execute unless score @s give_spawner matches ..-999 run function spawner_tweaker:give_spawners/trigger_give
execute unless score @s give_all_spawners matches 0 run function spawner_tweaker:give_spawners/trigger_give_all
execute if score @s highlight_spawners matches 1.. run function spawner_tweaker:highlight/trigger
execute unless score @s toggle_piercing_spawner_tweaker matches ..0 run function spawner_tweaker:toggle_block_pierce

#Seeing if this player is holding a spwner and should be ticking
execute unless score timer st_priming matches 1.. unless score bse_timer st_priming matches 1.. run tag @s[tag=!st_holding_spawner,predicate=!spawner_tweaker:shifting,tag=!st_disabled,nbt={SelectedItem:{id:"minecraft:spawner"}}] add st_holding_spawner

#Passive search for spawners
scoreboard players add @s st_search 1
execute if score @s st_search matches 20.. run scoreboard players set @s st_search 0
execute if score @s st_search matches 0 run function spawner_tweaker:search/search_core