
#Effect
playsound minecraft:block.chest.open master @s ~ ~ ~ 1 1.5
title @s actionbar {"color":"gold","text":"Container Sound: Chest"}

#Flag
scoreboard players set container_s spawner_tweaker_visuals 1

#Re-enter menu
function spawner_tweaker:settings/menu/flair