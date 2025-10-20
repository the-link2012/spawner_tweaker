
#Effect
playsound minecraft:block.trial_spawner.detect_player master @s ~ ~ ~ 1 0.8
title @s actionbar {"color":"green","text":"Register Sound: Rattle"}

#Flag
scoreboard players set register_s spawner_tweaker_visuals 1

#Re-enter menu
function spawner_tweaker:settings/menu/flair