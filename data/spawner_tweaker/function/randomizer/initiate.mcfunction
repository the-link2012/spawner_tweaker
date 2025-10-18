#Initiates the priming process

#Write data to a temporary list
data remove storage spawner_tweaker:temp Priming
data remove storage spawner_tweaker:temp Checking
data modify storage spawner_tweaker:temp Checking set from storage spawner_tweaker:temp Spawners
execute unless score $modification_range spawner_tweaker matches 1.. run data modify storage spawner_tweaker:temp Priming set from storage spawner_tweaker:temp Checking

#Fix this list by removing spawners outside of range
execute if score $modification_range spawner_tweaker matches 1.. run function spawner_tweaker:spawner_priming/range_checker

#Get spawner counts
scoreboard players set spawners_randomized st_priming 0
scoreboard players add total_spawners st_priming 0
execute store result score total_spawners st_priming if data storage spawner_tweaker:temp Priming[]

#Figuring out which spawners must be foreloaded
scoreboard players set n temp 0
data modify storage spawner_tweaker:temp Priming[0].n set value 0
data modify storage spawner_tweaker:temp Priming[0].next set value 1
function spawner_tweaker:spawner_priming/load_checker with storage spawner_tweaker:temp Priming[0]

#Reset the seed
$random reset spawner_tweaker:randomizer $(seed)

#Randomizing the ids
execute if score $st_ongoing_process temp matches 7 run data remove storage spawner_tweaker:temp random_source
execute if score $st_ongoing_process temp matches 7 run data modify storage spawner_tweaker:temp random_source set from storage spawner_tweaker:temp Priming
execute store result storage spawner_tweaker:temp variables.total_ids int 1 if data storage spawner_tweaker:temp Ids[{}]
function spawner_tweaker:randomizer/id_loop with storage spawner_tweaker:temp Priming[0]