
#Effect
playsound block.note_block.pling master @s ~ ~ ~ 1 1
title @s actionbar {"color":"red","text":"Spawn display disabled"}

#Flag
tag @s add st_disable_box

#Re-enter menu
function spawner_tweaker:settings/menu/flair