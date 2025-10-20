#Loop for fire particles when a new spawner is registered

execute positioned ^ ^ ^0.4 run particle sneeze ~ ~ ~ ^ ^ ^1000000 0.00000003 0 force
scoreboard players add x temp 30
scoreboard players set rot_y temp 0
execute if score x temp matches 360.. run scoreboard players set rot_y temp 1
execute if score x temp matches 360.. run scoreboard players add y temp 30
execute if score x temp matches 360.. run scoreboard players set x temp 0
execute if score y temp matches ..90 if score rot_y temp matches 0 rotated ~30 ~ run function spawner_tweaker:chests/register/wax_particle_loop
execute if score y temp matches ..90 if score rot_y temp matches 1 rotated ~30 ~30 run function spawner_tweaker:chests/register/wax_particle_loop