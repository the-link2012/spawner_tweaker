
#Effect
playsound block.note_block.pling master @s ~ ~ ~ 1 1
title @s actionbar {"color":"red","text":"Radius visuals disabled"}

#Flag
tag @s add st_disable_horizontal
tag @s add st_disable_vertical

#Re-enter menu
function spawner_tweaker:settings/menu/flair