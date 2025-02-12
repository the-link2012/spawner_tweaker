#Primes the spawner and does everything else needed

#Priming
$execute in $(dimension) store result block $(x2) $(y2) $(z2) Delay short 1 run scoreboard players get delay spawner_tweaker

#Remove junk data
scoreboard players set different temp 1
scoreboard players set count temp 0
$execute in $(dimension) store result score count temp if data block $(x2) $(y2) $(z2) SpawnPotentials[]
$execute in $(dimension) if score count temp matches 1 run data modify storage spawner_tweaker:temp same set from block $(x2) $(y2) $(z2) SpawnPotentials[0].data
$execute in $(dimension) if score count temp matches 1 store success score different temp run data modify storage spawner_tweaker:temp same set from block $(x2) $(y2) $(z2) SpawnData
$execute in $(dimension) if score $efficient_data spawner_tweaker matches 1.. if score count temp matches 1 if score different temp matches 0 run data remove block $(x2) $(y2) $(z2) SpawnPotentials[]

#Remove Data if the spawner isn't there
scoreboard players set remove temp 0
$execute in $(dimension) unless block $(x2) $(y2) $(z2) spawner run scoreboard players set remove temp 1
$execute if score remove temp matches 1.. run data remove storage spawner_tweaker:temp Spawners[{dimension:"$(dimension)",Pos:$(Pos)}]

#Bells and wistles
$execute if score $efficient_data spawner_tweaker matches 1.. if score count temp matches 1 if score different temp matches 0 in $(dimension) positioned $(x2) $(y2) $(z2) align xyz positioned ~0.5 ~0.5 ~0.5 run team join spawner_tweaker_yellow @e[distance=..1,limit=1,sort=nearest,tag=st_primer,type=item_display]
$execute if score remove temp matches 1.. in $(dimension) positioned $(x2) $(y2) $(z2) align xyz positioned ~0.5 ~0.5 ~0.5 run team join spawner_tweaker_red @e[distance=..1,limit=1,sort=nearest,tag=st_primer,type=item_display]


#Remove forceloads
$execute if score force_loaded spawner_tweaker matches 1.. in $(dimension) run forceload remove $(x2) $(z2)

#Remove storage
data remove storage spawner_tweaker:temp Priming[0]

