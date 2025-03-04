#Happens when you drop a spawner and need to prompt bse

#Getting the relevant positioning information and setting up data storage
summon marker ~ ~ ~ {UUID:[I;-44439381,467092815,-2143523091,-286623066]}
data modify storage spawner_tweaker:temp Spawner set value {Pos:[0.0d,0.0d,0.0d],dimension:"minecraft:overworld"}
data modify storage spawner_tweaker:temp Spawner.Pos set from entity fd59e8ab-1bd7-454f-803c-6eedeeea7aa6 Pos
data modify storage spawner_tweaker:temp Spawner.dimension set from entity @s Dimension
kill fd59e8ab-1bd7-454f-803c-6eedeeea7aa6

#Checking the number of spawners and getting additional information
data modify storage spawner_tweaker:temp Comparison set value {}
function spawner_tweaker:register/check_spawner with storage spawner_tweaker:temp Spawner
function spawner_tweaker:register/count_spawners with storage spawner_tweaker:temp Comparison
function spawner_tweaker:register/prompt_bse_drop with storage spawner_tweaker:temp Comparison

#Give the spawner back
execute at @s run data merge entity @e[distance=..5,limit=1,sort=nearest,nbt={Item:{id:"minecraft:spawner"}}] {PickupDelay:0}