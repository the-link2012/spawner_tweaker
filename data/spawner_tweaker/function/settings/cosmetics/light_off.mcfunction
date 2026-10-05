#Adjust the settings for the spawner's light functionaility

#Effect
playsound block.note_block.pling master @s ~ ~ ~ 1 1
title @s actionbar {"color":"red","text":"Light visualization disabled"}

#Flag
tag @s remove st_light_box
tag @s remove st_light_particle
tag @s add st_light_off

#Re-enter menus
function spawner_tweaker:settings/menu/flair