#Trigger for searching a volume

#Pull up menu
tellraw @s[scores={search_volume=1}] [{"color":"gray","italic":false,"underlined":false,"bold":false,"text":"Volume Search Menu"}]
tellraw @s[scores={search_volume=1}] [{"color":"dark_gray","italic":false,"text":"["},{"clickEvent":{"action":"run_command","value":"/trigger search_volume set 10"},"color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"The first corner of\nthe volume to search\nfor spawners","color":"gray"}]},"text":"Pos1"},"] [",{"clickEvent":{"action":"run_command","value":"/trigger search_volume set 11"},"color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"The second corner of\nthe volume to search\nfor spawners","color":"gray"}]},"text":"Pos2"},"] [",{"clickEvent":{"action":"run_command","value":"/trigger search_volume set 12"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Begins searching the\narea for spawners","color":"green"}]},"text":"Begin Search"},"]"]

execute if score @s search_volume matches 10 run function spawner_tweaker:search/volume/pos1
execute if score @s search_volume matches 11 run function spawner_tweaker:search/volume/pos2
execute if score @s search_volume matches 12 run function spawner_tweaker:search/volume/begin

#Reset flags
scoreboard players set @s search_volume 0