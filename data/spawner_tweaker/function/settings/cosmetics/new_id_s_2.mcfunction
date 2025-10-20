
#Effect
playsound minecraft:block.trial_spawner.spawn_mob master @s ~ ~ ~ 1 0.8
playsound minecraft:block.trial_spawner.ominous_activate master @s ~ ~ ~ 1 0.7
title @s actionbar {"color":"green","text":"New ID Sound: Activate"}

#Flag
scoreboard players set new_id_s spawner_tweaker_visuals 2

#Re-enter menu
function spawner_tweaker:settings/menu/flair