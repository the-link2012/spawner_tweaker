#sfx
playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 0.95

#Title
tellraw @s [{"bold":true,"color":"gray","text":"\n\n\n\n\n\n\n\n\n\n\n\n","underlined":false},{"bold":true,"color":"gray","text":"✎ Bulk Editing Menu ✎\n\n","underlined":true},{"bold":false,"color":"yellow","text":"Press \"","underlined":false},{"bold":false,"color":"green","keybind":"key.drop"},{"bold":false,"color":"yellow","italic":false,"text":"\" while tweaking\nfor faster bulk editing\n"}]

#Settings and menus
tellraw @s [{"color":"dark_gray","text":"["},{"click_event":{"action":"copy_to_clipboard","value":"/execute positioned <x> <y> <z> run function spawner_tweaker:bulk_edit/trigger_update"},"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Forces an id update for the spawner\nat that location (updates\nSpawnPotentials for that id)","color":"green"},{"text":"\n\nClick to copy function\n(paste in chat to use)","color":"gray"}]},"text":"Update ID"},"]",{"color":"dark_gray","text":" ["},{"click_event":{"action":"copy_to_clipboard","value":"/execute positioned <x> <y> <z> run function spawner_tweaker:bulk_edit/trigger_bse"},"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Forces a bulk spawner edit for the\nspawner at that location (updates\nALL spawner attributes for that id\nincluding things like range)","color":"red"},{"text":"\n\nClick to copy function\n(paste in chat to use)","color":"gray"}]},"text":"Bulk Update"},"]"]

#Go back
tellraw @s [{"color":"gray","text":"\n⮨ "},{"color":"dark_gray","text":"["},{"click_event":{"action":"run_command","command":"/trigger spawner_tweaker_menu set 1"},"color":"gray","hover_event":{"action":"show_text","value":[{"text":"Click to go back to the main menu","color":"gray"}]},"text":"Back"},{"color":"dark_gray","text":"]"}]
