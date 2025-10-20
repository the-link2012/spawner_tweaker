
#Effect
playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute at @s anchored eyes positioned ^ ^ ^4 run particle flash ~ ~ ~ 0 0 0 0.5 1 force
title @s actionbar {"color":"white","text":"Container Particles: Flash"}

#Flag
scoreboard players set container_p spawner_tweaker_visuals 1

#Re-enter menu
function spawner_tweaker:settings/menu/flair