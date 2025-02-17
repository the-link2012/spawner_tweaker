#Initiates the priming process

#Error if this is already ongoing
execute if score ongoing_process spawner_tweaker matches 1.. run tellraw @s {"color":"red","italic":false,"text":"Please wait until the current process is finished"}
execute if score ongoing_process spawner_tweaker matches 1.. run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1
execute if score ongoing_process spawner_tweaker matches 1.. run scoreboard players set @s prime_spawners -999
execute if score ongoing_process spawner_tweaker matches 1.. run return 1

#Lock in the delay
scoreboard players add delay st_priming 0
scoreboard players operation delay st_priming = @s prime_spawners
execute if score delay st_priming matches ..0 run scoreboard players set delay st_priming 0

#Write data to a temporary list
data remove storage spawner_tweaker:temp Priming
data remove storage spawner_tweaker:temp Checking
data modify storage spawner_tweaker:temp Checking set from storage spawner_tweaker:temp Spawners

#Fix this list by removing spawners outside of range
execute if score $range st_priming matches 1.. store result score x temp run data get entity @s Pos[0]
execute if score $range st_priming matches 1.. store result score y temp run data get entity @s Pos[1]
execute if score $range st_priming matches 1.. store result score z temp run data get entity @s Pos[2]
execute if score $range st_priming matches 1.. run function spawner_tweaker:spawner_priming/range_checker

#Get spawner counts
scoreboard players add total_spawners st_priming 0
execute unless score $range st_priming matches 1.. run data modify storage spawner_tweaker:temp Priming set from storage spawner_tweaker:temp Checking
execute store result score total_spawners st_priming if data storage spawner_tweaker:temp Priming[]

#Flags
scoreboard players set timer st_priming 1
scoreboard players set ongoing_process spawner_tweaker 1