#Compare the ids
execute store result score id temp run data get storage spawner_tweaker:temp Checking[0].id
execute if score id temp = $highlight_id spawner_tweaker run data modify storage spawner_tweaker:temp Priming append from storage spawner_tweaker:temp Checking[0]

#Remove and repeat
data remove storage spawner_tweaker:temp Checking[0]
execute if data storage spawner_tweaker:temp Checking[0] run function spawner_tweaker:run_function/id_checker