#20hz ticking on the interaction

#Grab data
execute store result score gametime spawner_tweaker run time query gametime
execute store result score lc temp run data get entity @s attack.timestamp
execute store result score rc temp run data get entity @s interaction.timestamp

#Compare to determine clickage
execute if score lc temp = gametime spawner_tweaker run function spawner_tweaker:spawner_tweaking/interaction/left_click
execute if score rc temp = gametime spawner_tweaker run function spawner_tweaker:spawner_tweaking/interaction/right_click