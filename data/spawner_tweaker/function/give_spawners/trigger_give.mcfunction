#Happens when you run the trigger to give yourself a spawner

#Set up storage
data modify storage spawner_tweaker:temp give set value {id:-1}
execute store result storage spawner_tweaker:temp give.id int 1 run scoreboard players get @s give_spawner

#Begin getting needed variables
function spawner_tweaker:give_spawners/read_id with storage spawner_tweaker:temp give

#Flags
scoreboard players set @s give_spawner -999
