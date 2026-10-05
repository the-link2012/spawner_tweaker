#Toggle
scoreboard players set box temp 0
execute if entity @s[tag=st_disable_box] run scoreboard players set box temp 1

#Effect
execute if score box temp matches 1 run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if score box temp matches 1 run title @s actionbar {"color":"green","text":"Spawn box enabled"}

execute if score box temp matches 0 run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if score box temp matches 0 run title @s actionbar {"color":"red","text":"Spawn box disabled"}


#Flag
execute if score box temp matches 1 run tag @s remove st_disable_box
execute if score box temp matches 0 run tag @s add st_disable_box

#Re-enter menu
function spawner_tweaker:settings/menu/flair