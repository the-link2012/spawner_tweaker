#Runs when the datapack loads, sets up any necessary scoreboards and teams

#Debug message
say Link's Spawner Tweaker loaded

#Scoreboards
scoreboard objectives add temp dummy
scoreboard objectives add spawner_tweaker dummy
scoreboard objectives add spawner_tweaker_slot dummy
scoreboard objectives add spawner_tweaker_slot_prev dummy
scoreboard objectives add spawner_tweaker_id dummy
scoreboard objectives add spawner_tweaker_setting dummy
scoreboard objectives add prime_spawners trigger
scoreboard objectives add toggle_spawner_tweaker trigger
scoreboard objectives add toggle_piercing_spawner_tweaker trigger
scoreboard objectives add give_all_spawners trigger
scoreboard objectives add give_spawner trigger
scoreboard objectives add delete_spawner_id trigger
scoreboard objectives add spawner_tweaker_delay dummy
scoreboard objectives add numbers dummy
scoreboard objectives add spawner_tweaker_offset dummy
scoreboard objectives add st_priming dummy
scoreboard objectives add st_search dummy

#Scores
execute unless score setup spawner_tweaker matches 1.. run scoreboard players set $search_range spawner_tweaker 6
execute unless score setup spawner_tweaker matches 1.. run scoreboard players set $modification_limit spawner_tweaker 20
execute unless score setup spawner_tweaker matches 1.. run scoreboard players set $efficient_data spawner_tweaker 1
execute unless score setup spawner_tweaker matches 1.. run scoreboard players set $prime_range spawner_tweaker -1
scoreboard players set setup spawner_tweaker 3

scoreboard players set -1 numbers -1
scoreboard players set 2 numbers 2
scoreboard players set 5 numbers 5
scoreboard players set 10 numbers 10
scoreboard players set 20 numbers 20
scoreboard players set 100 numbers 100

#Teams
team add spawner_tweaker_green {"text":"Green","color":"green","bold":false,"italic":false,"underlined":false}
team add spawner_tweaker_red {"text":"Red","color":"red","bold":false,"italic":false,"underlined":false}
team add spawner_tweaker_yellow {"text":"Yellow","color":"red","bold":false,"italic":false,"underlined":false}
team modify spawner_tweaker_green color green
team modify spawner_tweaker_red color red
team modify spawner_tweaker_yellow color yellow

#Gamerules
gamerule maxCommandForkCount 2147483647
gamerule maxCommandChainLength 2147483647