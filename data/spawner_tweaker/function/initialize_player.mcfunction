

#Initialization operations
execute store result score @s[tag=!st_init_3] st_search run random value 1..20
scoreboard players set @s[tag=!st_init_3] prime_spawners -999
scoreboard players set @s[tag=!st_init_3] give_spawner -1000
scoreboard players set @s[tag=!st_init_3] delete_spawner_id -1
scoreboard players set @s[tag=!st_init_3] spawner_tweaker_menu 0
scoreboard players add @s[tag=!st_init_3] delete_nearby_chests 0
scoreboard players add @s[tag=!st_init_3] highlight_spawners 0

#Welcome message
playsound minecraft:block.trial_spawner.spawn_item_begin master @s ~ ~ ~ 1 1
tellraw @s {"bold":true,"underlined":true,"color":"green","text":"\nWelcome to Spawner Tweaker!\n"}
tellraw @s [{"color":"dark_gray","text":"["},{"click_event":{"action":"run_command","command":"/trigger spawner_tweaker_menu set 2"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"Enables/disables spawner tweaker\nfor you (default is on)","color":"green"}]},"text":"Toggle Tweaking"},"] [",{"click_event":{"action":"run_command","command":"/trigger spawner_tweaker_menu set 3"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"Toggles if spawner tweaker's \nraycast halts when hitting solid\nblocks for you (default is piercing)","color":"green"}]},"text":"Toggle Piercing"},"]"]
tellraw @s [{"color":"dark_gray","text":"["},{"click_event":{"action":"run_command","command":"/trigger spawner_tweaker_menu set 4"},"color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Click for a brief explanation\non how spawner tweaker works","color":"gray"}]},"text":"Quick Tutorial"},"]",{"color":"gray","text":" ⇒"},{"text":"\n["},{"click_event":{"action":"run_command","command":"/trigger spawner_tweaker_menu set 14"},"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Click to adjust Spawner Tweaker's\nsettings and browse its functions","color":"gray"}]},"text":"⚙Settings⚙"},"]",{"color":"gray","text":" ⇒"}]

#Enable tweaker
tag @s[tag=!st_init_3] remove st_enabled
tag @s[tag=!st_init_3] remove st_disabled
execute if entity @s[tag=!st_init_3] run function spawner_tweaker:settings/toggle_tweaking

#Flag
tag @s add st_init_3