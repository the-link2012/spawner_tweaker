#Handles the triggers for spawner tweaker's menus and settings

#Tutorial
execute if score @s spawner_tweaker_menu matches 1 run function spawner_tweaker:settings/menu/main
execute if score @s spawner_tweaker_menu matches 2 run function spawner_tweaker:settings/toggle_tweaking
execute if score @s spawner_tweaker_menu matches 3 run function spawner_tweaker:settings/toggle_block_pierce
execute if score @s spawner_tweaker_menu matches 4 run function spawner_tweaker:settings/menu/tutorial
execute if score @s spawner_tweaker_menu matches 5 run function spawner_tweaker:initialize_player

#Menus
execute if score @s spawner_tweaker_menu matches 10..13 run function spawner_tweaker:search/volume/trigger
execute if score @s spawner_tweaker_menu matches 17 run function spawner_tweaker:settings/menu/randomizer
execute if score @s spawner_tweaker_menu matches 15 run function spawner_tweaker:settings/menu/bulk_editing
execute if score @s spawner_tweaker_menu matches 14 run function spawner_tweaker:settings/menu/settings
execute if score @s spawner_tweaker_menu matches 16 run function spawner_tweaker:settings/menu/flair

#Functionality
execute if score @s spawner_tweaker_menu matches 20 run function spawner_tweaker:settings/toggle_alzheimer
execute if score @s spawner_tweaker_menu matches 21 run function spawner_tweaker:settings/toggle_efficient_data
execute if score @s spawner_tweaker_menu matches 22 run function spawner_tweaker:settings/toggle_data_population

#Visual options
execute if score @s spawner_tweaker_menu matches 30 run function spawner_tweaker:settings/cosmetics/beam_on
execute if score @s spawner_tweaker_menu matches 31 run function spawner_tweaker:settings/cosmetics/beam_off
execute if score @s spawner_tweaker_menu matches 32 run function spawner_tweaker:settings/cosmetics/radius_vertical
execute if score @s spawner_tweaker_menu matches 33 run function spawner_tweaker:settings/cosmetics/radius_horizontal
execute if score @s spawner_tweaker_menu matches 34 run function spawner_tweaker:settings/cosmetics/radius_all
execute if score @s spawner_tweaker_menu matches 35 run function spawner_tweaker:settings/cosmetics/radius_none
execute if score @s spawner_tweaker_menu matches 36 run function spawner_tweaker:settings/cosmetics/box_on
execute if score @s spawner_tweaker_menu matches 37 run function spawner_tweaker:settings/cosmetics/box_off

execute if score @s spawner_tweaker_menu matches 40 run function spawner_tweaker:settings/cosmetics/new_id_p_1
execute if score @s spawner_tweaker_menu matches 41 run function spawner_tweaker:settings/cosmetics/new_id_p_2
execute if score @s spawner_tweaker_menu matches 42 run function spawner_tweaker:settings/cosmetics/new_id_p_3
execute if score @s spawner_tweaker_menu matches 43 run function spawner_tweaker:settings/cosmetics/new_id_p_0
execute if score @s spawner_tweaker_menu matches 44 run function spawner_tweaker:settings/cosmetics/new_id_s_1
execute if score @s spawner_tweaker_menu matches 45 run function spawner_tweaker:settings/cosmetics/new_id_s_2
execute if score @s spawner_tweaker_menu matches 46 run function spawner_tweaker:settings/cosmetics/new_id_s_0
execute if score @s spawner_tweaker_menu matches 47 run function spawner_tweaker:settings/cosmetics/register_p_1
execute if score @s spawner_tweaker_menu matches 48 run function spawner_tweaker:settings/cosmetics/register_p_2
execute if score @s spawner_tweaker_menu matches 49 run function spawner_tweaker:settings/cosmetics/register_p_0
execute if score @s spawner_tweaker_menu matches 50 run function spawner_tweaker:settings/cosmetics/register_s_1
execute if score @s spawner_tweaker_menu matches 51 run function spawner_tweaker:settings/cosmetics/register_s_0
execute if score @s spawner_tweaker_menu matches 52 run function spawner_tweaker:settings/cosmetics/container_p_1
execute if score @s spawner_tweaker_menu matches 53 run function spawner_tweaker:settings/cosmetics/container_p_2
execute if score @s spawner_tweaker_menu matches 54 run function spawner_tweaker:settings/cosmetics/container_p_0
execute if score @s spawner_tweaker_menu matches 55 run function spawner_tweaker:settings/cosmetics/container_s_1
execute if score @s spawner_tweaker_menu matches 56 run function spawner_tweaker:settings/cosmetics/container_s_2
execute if score @s spawner_tweaker_menu matches 57 run function spawner_tweaker:settings/cosmetics/container_s_0

#Flag
scoreboard players set @s spawner_tweaker_menu 0