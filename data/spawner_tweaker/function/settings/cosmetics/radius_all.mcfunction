
#Effect
playsound block.note_block.pling master @s ~ ~ ~ 1 2
title @s actionbar {"color":"green","text":"Both radius visuals enabled"}

#Flag
tag @s remove st_disable_horizontal
tag @s remove st_disable_vertical

#Re-enter menu
function spawner_tweaker:settings/menu/flair