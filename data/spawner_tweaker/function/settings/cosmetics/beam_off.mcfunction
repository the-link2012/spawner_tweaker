
#Effect
playsound block.note_block.pling master @s ~ ~ ~ 1 1
title @s actionbar {"color":"red","text":"Beam disabled"}

#Flag
tag @s add st_beam_disable

#Re-enter menu
function spawner_tweaker:settings/menu/flair