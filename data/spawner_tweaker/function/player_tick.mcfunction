#20hz on creative mode players

#Enabling triggers
scoreboard players enable @s spawner_tweaker_menu


#Enabling triggers
scoreboard players enable @s delete_nearby_chests

#Initialization
execute if entity @s[tag=!st_init_3] run function spawner_tweaker:initialize_player

#Running triggers
execute unless score @s spawner_tweaker_menu matches 0 run function spawner_tweaker:settings/trigger_handler

execute if score @s give_spawner matches -999.. run function spawner_tweaker:give_spawners/trigger_give
execute if score @s delete_spawner_id matches 0.. store result storage spawner_tweaker:temp variables.id int 1 run scoreboard players get @s delete_spawner_id
execute if score @s delete_spawner_id matches 0.. run function spawner_tweaker:register/remove_id with storage spawner_tweaker:temp variables
execute if score @s highlight_spawners matches 1.. run function spawner_tweaker:highlight/trigger
execute if score @s prime_spawners matches -998.. run function spawner_tweaker:spawner_priming/initiate
execute if score @s delete_nearby_chests matches 1.. run function spawner_tweaker:chests/delete/trigger

#Seeing if this player is holding a spwner and should be ticking
execute unless score timer st_priming matches 1.. unless score bse_timer st_priming matches 1.. run tag @s[tag=!st_holding_spawner,predicate=!spawner_tweaker:shifting,tag=!st_disabled,nbt={SelectedItem:{id:"minecraft:spawner"}}] add st_holding_spawner

#Passive search for spawners
scoreboard players add @s st_search 1
execute if score @s st_search matches 20.. run scoreboard players set @s st_search 0
execute if score @s st_search matches 0 run function spawner_tweaker:search/search_core

