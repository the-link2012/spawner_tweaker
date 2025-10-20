#Trigger for searching a volume

#Pull up menu
tellraw @s [{"color":"gray","italic":false,"underlined":true,"bold":true,"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nVolume Search Menu\n"}]
tellraw @s [{"color":"dark_gray","italic":false,"text":"["},{"click_event":{"action":"run_command","command":"/scoreboard players set @s spawner_tweaker_menu 11"},"color":"yellow","hover_event":{"action":"show_text","value":[{"text":"The first corner of\nthe volume to search\nfor spawners","color":"gray"}]},"text":"Pos1"},"] [",{"click_event":{"action":"run_command","command":"/scoreboard players set @s spawner_tweaker_menu 12"},"color":"gold","hover_event":{"action":"show_text","value":[{"text":"The second corner of\nthe volume to search\nfor spawners","color":"gray"}]},"text":"Pos2"},"] [",{"click_event":{"action":"run_command","command":"/scoreboard players set @s spawner_tweaker_menu 13"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"Begins searching the\narea for spawners","color":"green"}]},"text":"Begin Search"},"]"]
tellraw @s [{"color":"gray","text":"\n⮨ "},{"color":"dark_gray","text":"["},{"click_event":{"action":"run_command","command":"/trigger spawner_tweaker_menu set 1"},"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Click to go back to the main menu","color":"gray"}]},"text":"Back"},{"color":"dark_gray","text":"]"}]

execute if score @s spawner_tweaker_menu matches 10 at @s run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.95
execute if score @s spawner_tweaker_menu matches 11 run function spawner_tweaker:search/volume/pos1
execute if score @s spawner_tweaker_menu matches 12 run function spawner_tweaker:search/volume/pos2
execute if score @s spawner_tweaker_menu matches 13 run function spawner_tweaker:search/volume/begin

