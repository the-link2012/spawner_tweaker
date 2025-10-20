#Toggles if settings should get reset when selecting other spawners

#Enable
execute if entity @s[tag=!st_reset_settings] run tag @s add st_toggle_flip

execute if entity @s[tag=!st_toggle_flip] run tag @s remove st_reset_settings
execute if entity @s[tag=!st_toggle_flip] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if entity @s[tag=!st_toggle_flip] run title @p actionbar {"color":"red","text":"You are cured of Alzheimer's"}

#Disabled
execute if entity @s[tag=st_toggle_flip] run tag @s add st_reset_settings
execute if entity @s[tag=st_toggle_flip] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if entity @s[tag=st_toggle_flip] run title @p actionbar {"color":"green","text":"You now have Alzheimer's"}

tag @s remove st_toggle_flip

#Re-enter menu
function spawner_tweaker:settings/menu/settings