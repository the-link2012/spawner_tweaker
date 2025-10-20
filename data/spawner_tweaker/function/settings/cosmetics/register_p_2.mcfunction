
#Effect
playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute at @s anchored eyes positioned ^ ^ ^4 run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.7 0.7 0.7 0 40 normal @s
title @s actionbar {"color":"aqua","text":"Register Particles: Blue"}

#Flag
scoreboard players set register_p spawner_tweaker_visuals 2

#Re-enter menu
function spawner_tweaker:settings/menu/flair