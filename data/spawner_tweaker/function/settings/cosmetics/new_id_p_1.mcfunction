
#Effect
playsound block.note_block.pling master @s ~ ~ ~ 1 2
scoreboard players set y temp -90
scoreboard players set x temp 0
execute at @s anchored eyes positioned ^ ^ ^4 rotated 0 -90 run function spawner_tweaker:register/register_particle_loop
title @s actionbar {"color":"gold","text":"New ID Particles: Fire"}

#Flag
scoreboard players set new_id_p spawner_tweaker_visuals 1

#Re-enter menu
function spawner_tweaker:settings/menu/flair