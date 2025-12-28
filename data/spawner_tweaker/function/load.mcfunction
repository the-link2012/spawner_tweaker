#Runs when the datapack loads, sets up any necessary scoreboards and teams

#Debug message
tellraw @a[name="_link_2012_"] "Spawner Tweaker Loaded"

#Fix issues with previous data format
execute if data storage spawner_tweaker:temp Spawners[0].Pos unless data storage spawner_tweaker:temp Spawners[0].x run function spawner_tweaker:register/fix_old/core

#Fix visuals of volume
execute unless score $st_ongoing_process temp matches 4 run kill 18c359ed-00ca-4242-9e49-91cd8846f33a
execute unless score $st_ongoing_process temp matches 4 run scoreboard players set $pos1_set st_volume 99999999
execute unless score $st_ongoing_process temp matches 4 run scoreboard players set $pos2_set st_volume 99999999

#Scoreboards
scoreboard objectives add temp dummy
scoreboard objectives add spawner_tweaker dummy
scoreboard objectives add spawner_tweaker_visuals dummy
scoreboard objectives add spawner_tweaker_slot dummy
scoreboard objectives add spawner_tweaker_slot_prev dummy
scoreboard objectives add spawner_tweaker_id dummy
scoreboard objectives add spawner_tweaker_setting dummy
scoreboard objectives add spawner_tweaker_menu trigger
scoreboard objectives add prime_spawners dummy
scoreboard objectives add highlight_spawners dummy
scoreboard objectives add give_spawner dummy
scoreboard objectives add delete_spawner_id dummy
scoreboard objectives add delete_nearby_chests dummy
scoreboard objectives add spawner_tweaker_delay dummy
scoreboard objectives add numbers dummy
scoreboard objectives add spawner_tweaker_offset dummy
scoreboard objectives add st_priming dummy
scoreboard objectives add st_search dummy
scoreboard objectives add st_swap dummy
scoreboard objectives add st_drop_spawner minecraft.dropped:minecraft.spawner
scoreboard objectives add st_volume dummy

#Remove old scoreboards
scoreboard objectives remove toggle_spawner_tweaker
scoreboard objectives remove toggle_piercing_spawner_tweaker
scoreboard objectives remove give_all_spawners
scoreboard objectives remove disable_spawner_tweaker
scoreboard objectives remove search_volume

#Scores
scoreboard players set $highlight_id spawner_tweaker -1
execute unless score setup spawner_tweaker matches 6.. unless score $reselect_ticks spawner_tweaker matches ..19 run scoreboard players set $reselect_ticks spawner_tweaker 5
execute unless score setup spawner_tweaker matches 4.. run scoreboard players set $data_population spawner_tweaker 1
execute unless score setup spawner_tweaker matches 4.. run scoreboard players set $search_range spawner_tweaker 6
execute unless score setup spawner_tweaker matches 4.. run scoreboard players set $modification_limit spawner_tweaker 20
execute unless score setup spawner_tweaker matches 1.. run scoreboard players set $efficient_data spawner_tweaker 1
execute unless score setup spawner_tweaker matches 9.. run scoreboard players set $modification_range spawner_tweaker -1
execute unless score setup spawner_tweaker matches 7.. run scoreboard players set $randomizer_seed spawner_tweaker 0
execute unless score setup spawner_tweaker matches 10.. run scoreboard players set new_id_p spawner_tweaker_visuals 1
execute unless score setup spawner_tweaker matches 10.. run scoreboard players set new_id_s spawner_tweaker_visuals 2
execute unless score setup spawner_tweaker matches 10.. run scoreboard players set register_p spawner_tweaker_visuals 1
execute unless score setup spawner_tweaker matches 10.. run scoreboard players set register_s spawner_tweaker_visuals 1
execute unless score setup spawner_tweaker matches 10.. run scoreboard players set container_p spawner_tweaker_visuals 1
execute unless score setup spawner_tweaker matches 10.. run scoreboard players set container_s spawner_tweaker_visuals 0
scoreboard players set setup spawner_tweaker 10

scoreboard players set -1 numbers -1
scoreboard players set 2 numbers 2
scoreboard players set 5 numbers 5
scoreboard players set 10 numbers 10
scoreboard players set 20 numbers 20
scoreboard players set 100 numbers 100
scoreboard players set 1000 numbers 1000

#Teams
team add spawner_tweaker_gray {"text":"Gray","color":"gray","bold":false,"italic":false,"underlined":false}
team add spawner_tweaker_dark_gray {"text":"Dark Gray","color":"dark_gray","bold":false,"italic":false,"underlined":false}
team add spawner_tweaker_green {"text":"Green","color":"green","bold":false,"italic":false,"underlined":false}
team add spawner_tweaker_dark_green {"text":"Dark Green","color":"dark_green","bold":false,"italic":false,"underlined":false}
team add spawner_tweaker_red {"text":"Red","color":"red","bold":false,"italic":false,"underlined":false}
team add spawner_tweaker_dark_red {"text":"Dark Red","color":"dark_red","bold":false,"italic":false,"underlined":false}
team add spawner_tweaker_yellow {"text":"Yellow","color":"yellow","bold":false,"italic":false,"underlined":false}
team modify spawner_tweaker_green color green
team modify spawner_tweaker_dark_green color dark_green
team modify spawner_tweaker_red color red
team modify spawner_tweaker_dark_red color dark_red
team modify spawner_tweaker_yellow color yellow
team modify spawner_tweaker_gray color gray
team modify spawner_tweaker_dark_gray color dark_gray

#Gamerules
gamerule max_command_forks 2147483647
gamerule max_command_sequence_length 2147483647