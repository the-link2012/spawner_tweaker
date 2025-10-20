
#Effect
playsound minecraft:block.trial_spawner.spawn_mob master @s ~ ~ ~ 1 0.8
playsound item.firecharge.use master @s ~ ~ ~ 0.8 0.5
title @s actionbar {"color":"gold","text":"New ID Sound: Fire"}

#Flag
scoreboard players set new_id_s spawner_tweaker_visuals 1

#Re-enter menu
function spawner_tweaker:settings/menu/flair