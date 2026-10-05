#Adjust the settings for the spawner's light functionaility

#Effect
playsound block.note_block.pling master @s ~ ~ ~ 1 2
title @s actionbar {"color":"green","text":"Light particle enabled"}

#Flag
tag @s remove st_light_box
tag @s add st_light_particle
tag @s remove st_light_off

#Re-enter menus
function spawner_tweaker:settings/menu/flair