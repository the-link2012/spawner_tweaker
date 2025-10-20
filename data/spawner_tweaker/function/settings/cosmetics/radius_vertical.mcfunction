
#Effect
playsound block.note_block.pling master @s ~ ~ ~ 1 1.5
title @s actionbar {"color":"yellow","text":"Vertical radius visual enabled"}

#Flag
tag @s add st_disable_horizontal
tag @s remove st_disable_vertical

#Re-enter menu
function spawner_tweaker:settings/menu/flair