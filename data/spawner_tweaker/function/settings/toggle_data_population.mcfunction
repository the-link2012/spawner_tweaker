
#Enable
execute unless score $data_population spawner_tweaker matches 1 run tag @s add st_toggle_flip

execute if entity @s[tag=!st_toggle_flip] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
execute if entity @s[tag=!st_toggle_flip] run title @p actionbar {"color":"red","text":"Mob population disabled"}

#Disabled
execute if entity @s[tag=st_toggle_flip] at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 2
execute if entity @s[tag=st_toggle_flip] run title @p actionbar {"color":"green","text":"Mob population enabled"}

tag @s remove st_toggle_flip

#Actually adjust the flag
scoreboard players add $data_population spawner_tweaker 1
execute if score $data_population spawner_tweaker matches 2.. run scoreboard players set $data_population spawner_tweaker 0

#Re-enter menu
function spawner_tweaker:settings/menu/settings