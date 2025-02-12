#Initiates the priming process

#Lock in the delay
scoreboard players add delay spawner_tweaker 0
scoreboard players operation delay spawner_tweaker = @a[limit=1,scores={prime_spawners=-999..}] prime_spawners
execute if score delay spawner_tweaker matches ..0 run scoreboard players set delay spawner_tweaker 0

#Write data to a temporary list
data remove storage spawner_tweaker:temp Priming
data remove storage spawner_tweaker:temp Checking
data modify storage spawner_tweaker:temp Checking set from storage spawner_tweaker:temp Spawners

#Fix this list by removing spawners outside of range
execute if score $range spawner_tweaker matches 1.. store result score x temp run data get entity @a[limit=1,scores={prime_spawners=-999..}] Pos[0]
execute if score $range spawner_tweaker matches 1.. store result score y temp run data get entity @a[limit=1,scores={prime_spawners=-999..}] Pos[1]
execute if score $range spawner_tweaker matches 1.. store result score z temp run data get entity @a[limit=1,scores={prime_spawners=-999..}] Pos[2]
execute if score $range spawner_tweaker matches 1.. run function spawner_tweaker:spawner_priming/range_checker

#Get spawner counts
scoreboard players add total_spawners spawner_tweaker 0
execute unless score $range spawner_tweaker matches 1.. run data modify storage spawner_tweaker:temp Priming set from storage spawner_tweaker:temp Checking
execute store result score total_spawners spawner_tweaker if data storage spawner_tweaker:temp Priming[]
