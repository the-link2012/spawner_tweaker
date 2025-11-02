
#Effect
playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute at @s anchored eyes positioned ^ ^ ^4 run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~ ~ 0 0 0 2 1 force
title @s actionbar {"color":"white","text":"New ID Particles: Flash"}

#Flag
scoreboard players set new_id_p spawner_tweaker_visuals 3

#Re-enter menu
function spawner_tweaker:settings/menu/flair