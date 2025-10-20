#Toggles if the raycast should penetrate blocks

scoreboard players set @s toggle_piercing_spawner_tweaker 0

#Enable
execute if entity @s[tag=!st_no_pierce] run tag @s add st_toggle_flip

execute if entity @s[tag=!st_toggle_flip] run tag @s remove st_no_pierce
execute if entity @s[tag=!st_toggle_flip] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if entity @s[tag=!st_toggle_flip] run title @p actionbar {"color":"green","text":"Piercing enabled"}

#Disabled
execute if entity @s[tag=st_toggle_flip] run tag @s add st_no_pierce
execute if entity @s[tag=st_toggle_flip] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if entity @s[tag=st_toggle_flip] run title @p actionbar {"color":"red","text":"Piercing disabled"}

tag @s remove st_toggle_flip
