#Runs when the datapack loads, sets up any necessary scoreboards and teams

#Return if this has been loaded
execute if score setup spawner_tweaker matches 3.. run return 1

#Scoreboards
scoreboard objectives add temp dummy
scoreboard objectives add spawner_tweaker dummy
scoreboard objectives add spawner_tweaker_slot dummy
scoreboard objectives add spawner_tweaker_slot_prev dummy
scoreboard objectives add prime_spawners trigger

#Scores
scoreboard players set setup spawner_tweaker 3
scoreboard players set $efficient_data spawner_tweaker 1
scoreboard players set $range spawner_tweaker -1
scoreboard players set spawners_primed spawner_tweaker -1

#Teams
team add spawner_tweaker_green {"text":"Green","color":"green","bold":false,"italic":false,"underlined":false}
team add spawner_tweaker_red {"text":"Red","color":"red","bold":false,"italic":false,"underlined":false}
team add spawner_tweaker_yellow {"text":"Yellow","color":"red","bold":false,"italic":false,"underlined":false}
team modify spawner_tweaker_green color green
team modify spawner_tweaker_red color red
team modify spawner_tweaker_yellow color yellow