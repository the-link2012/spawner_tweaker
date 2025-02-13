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
scoreboard objectives add disable_spawner_tweaker trigger
scoreboard objectives add give_all_spawners trigger

#Scores
execute unless score setup spawner_tweaker matches 1.. run scoreboard players set $efficient_data spawner_tweaker 1
execute unless score setup spawner_tweaker matches 1.. run scoreboard players set $range spawner_tweaker -1

scoreboard players set setup spawner_tweaker 3

#Teams
team add spawner_tweaker_green {"text":"Green","color":"green","bold":false,"italic":false,"underlined":false}
team add spawner_tweaker_red {"text":"Red","color":"red","bold":false,"italic":false,"underlined":false}
team add spawner_tweaker_yellow {"text":"Yellow","color":"red","bold":false,"italic":false,"underlined":false}
team modify spawner_tweaker_green color green
team modify spawner_tweaker_red color red
team modify spawner_tweaker_yellow color yellow