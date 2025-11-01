#Initiates the function process

#Error if this is already ongoing
execute if score $st_ongoing_process temp matches 1.. run tellraw @s {"color":"red","italic":false,"text":"Please wait until the current process is finished"}
execute if score $st_ongoing_process temp matches 1.. run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1
execute if score $st_ongoing_process temp matches 1.. run return 1

#Write variables into a storage
$data modify storage spawner_tweaker:temp run_function set value {command:"$(command)",id:$(id),range:$(range),glow_ticks:$(glow_ticks)}
$scoreboard players set $modification_range spawner_tweaker $(range)
$scoreboard players set $highlight_id spawner_tweaker $(id)
$scoreboard players set glow_ticks st_priming $(glow_ticks)

#Write data to a temporary list
data remove storage spawner_tweaker:temp Priming
data remove storage spawner_tweaker:temp Checking
data modify storage spawner_tweaker:temp Checking set from storage spawner_tweaker:temp Spawners
execute unless score $modification_range spawner_tweaker matches 1.. run data modify storage spawner_tweaker:temp Priming set from storage spawner_tweaker:temp Checking

#Fix this list by removing spawners outside of range
execute if score $modification_range spawner_tweaker matches 1.. store result score x temp run data get entity @s Pos[0]
execute if score $modification_range spawner_tweaker matches 1.. store result score y temp run data get entity @s Pos[1]
execute if score $modification_range spawner_tweaker matches 1.. store result score z temp run data get entity @s Pos[2]
execute if score $modification_range spawner_tweaker matches 1.. run function spawner_tweaker:spawner_priming/range_checker

#Exclude spawners with the wrong id
execute if score $highlight_id spawner_tweaker matches 1.. run data remove storage spawner_tweaker:temp Checking
execute if score $highlight_id spawner_tweaker matches 1.. run data modify storage spawner_tweaker:temp Checking set from storage spawner_tweaker:temp Priming
execute if score $highlight_id spawner_tweaker matches 1.. run data remove storage spawner_tweaker:temp Priming
execute if score $highlight_id spawner_tweaker matches 1.. run function spawner_tweaker:run_function/id_checker

#Get spawner counts
scoreboard players set functions_executed st_priming 0
scoreboard players add total_spawners st_priming 0
execute store result score total_spawners st_priming if data storage spawner_tweaker:temp Priming[]

#Figuring out which spawners must be foreloaded
scoreboard players set n temp 0
data modify storage spawner_tweaker:temp Priming[0].n set value 0
data modify storage spawner_tweaker:temp Priming[0].next set value 1
function spawner_tweaker:spawner_priming/load_checker with storage spawner_tweaker:temp Priming[0]

#Flags
scoreboard players set failed_function st_priming 0
scoreboard players set function_timer st_priming 1
scoreboard players set $st_ongoing_process temp 10