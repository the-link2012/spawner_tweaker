#Toggles if tweaker is on or off for this individual

scoreboard players set @s toggle_spawner_tweaker -999

#Enable
execute if entity @s[tag=st_enabled] run tag @s add st_disable
execute if entity @s[tag=!st_enabled] run tag @s remove st_disabled
execute if entity @s[tag=!st_enabled] run title @p actionbar {"color":"green","text":"Spawner tweaker enabled"}
execute if entity @s[tag=!st_enabled,tag=st_init_3] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if entity @s[tag=!st_enabled] run tag @s add st_enabled

#Disabled
execute if entity @s[tag=st_disable] run tag @s remove st_enabled
execute if entity @s[tag=st_disable] run tag @s add st_disabled
execute if entity @s[tag=st_disable,tag=st_init_3] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if entity @s[tag=st_disable] run title @p actionbar {"color":"red","text":"Spawner tweaker disabled"}

tag @s remove st_disable