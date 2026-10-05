#Gets the light of the position where this call is made and store it to lightcall temp
scoreboard players set lightcall temp 0

#Bisection to optimize, thanks 14er

#step 1
execute if predicate spawner_tweaker:light/8to15 run scoreboard players set lightcall temp 8

#step2
execute if score lightcall temp matches 8 if predicate spawner_tweaker:light/12to15 run scoreboard players set lightcall temp 12
execute if score lightcall temp matches 0 if predicate spawner_tweaker:light/4to7 run scoreboard players set lightcall temp 4

#step 3
execute if score lightcall temp matches 12 if predicate spawner_tweaker:light/14to15 run scoreboard players set lightcall temp 14
execute if score lightcall temp matches 8 if predicate spawner_tweaker:light/10to11 run scoreboard players set lightcall temp 10
execute if score lightcall temp matches 4 if predicate spawner_tweaker:light/6to7 run scoreboard players set lightcall temp 6
execute if score lightcall temp matches 0 if predicate spawner_tweaker:light/2to3 run scoreboard players set lightcall temp 2

#step 4
execute if score lightcall temp matches 14 if predicate spawner_tweaker:light/15 run scoreboard players set lightcall temp 15
execute if score lightcall temp matches 12 if predicate spawner_tweaker:light/13 run scoreboard players set lightcall temp 13
execute if score lightcall temp matches 10 if predicate spawner_tweaker:light/11 run scoreboard players set lightcall temp 11
execute if score lightcall temp matches 8 if predicate spawner_tweaker:light/9 run scoreboard players set lightcall temp 9
execute if score lightcall temp matches 6 if predicate spawner_tweaker:light/7 run scoreboard players set lightcall temp 7
execute if score lightcall temp matches 4 if predicate spawner_tweaker:light/5 run scoreboard players set lightcall temp 5
execute if score lightcall temp matches 2 if predicate spawner_tweaker:light/3 run scoreboard players set lightcall temp 3
execute if score lightcall temp matches 0 if predicate spawner_tweaker:light/1 run scoreboard players set lightcall temp 1
