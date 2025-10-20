
#Effect
playsound block.note_block.pling master @s ~ ~ ~ 1 2
title @s actionbar {"color":"green","text":"Beam enabled"}

#Flag
tag @s remove st_beam_disable

#Re-enter menu
function spawner_tweaker:settings/menu/flair