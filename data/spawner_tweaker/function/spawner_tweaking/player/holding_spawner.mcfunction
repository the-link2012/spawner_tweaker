#20hz on an arbitrary player holding a spawner

#Mark the player
tag @s add holding_spawner

#Raycasting, my beloved (finds spawner)
scoreboard players set n temp 200
execute at @s anchored eyes run function spawner_tweaker:spawner_tweaking/player/raycast
execute if score n temp matches 0 run scoreboard players set swap_spawner spawner_tweaker 0

#Branch to the display on the spawner
execute as 38e349da-d05c-47c9-85c5-dad3300233dc at @s run function spawner_tweaker:spawner_tweaking/display_tick with block ~ ~ ~

#Interaction tickage
execute at @s anchored eyes positioned ^ ^ ^ run tp 267e6e48-4a17-42b3-bf89-dd2b69b0818d ~ ~-1.5 ~
execute at @s anchored eyes positioned ^ ^ ^ run tp 603e1c72-9632-43e3-8ad2-aa6d803f9a8b ~ ~-0.5 ~
execute as 267e6e48-4a17-42b3-bf89-dd2b69b0818d at @s run function spawner_tweaker:spawner_tweaking/interaction/interaction_tick
execute as 603e1c72-9632-43e3-8ad2-aa6d803f9a8b at @s run function spawner_tweaker:spawner_tweaking/interaction/interaction_tick

#Set loaded flag
scoreboard players set loaded spawner_tweaker 1
scoreboard players set holding_spawner spawner_tweaker 1

#Unmark procedure
execute store result score @s spawner_tweaker_slot run data get entity @s SelectedItemSlot
execute unless score @s spawner_tweaker_slot = @s spawner_tweaker_slot_prev run function spawner_tweaker:unload
scoreboard players operation @s spawner_tweaker_slot_prev = @s spawner_tweaker_slot