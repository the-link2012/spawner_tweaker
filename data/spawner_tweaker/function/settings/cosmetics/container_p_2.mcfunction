
#Effect
playsound block.note_block.pling master @s ~ ~ ~ 1 2
scoreboard players set y temp -90
scoreboard players set x temp 0
execute at @s anchored eyes positioned ^ ^ ^4 align xyz positioned ~0.5 ~0.5 ~0.5 rotated 0 -90 run function spawner_tweaker:chests/register/wax_particle_loop
title @s actionbar {"color":"green","text":"Container Particles: Fart"}

#Flag
scoreboard players set container_p spawner_tweaker_visuals 2

#Re-enter menu
function spawner_tweaker:settings/menu/flair