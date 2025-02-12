#Preps spawners for priming


#Foreload checking
scoreboard players set force_loaded spawner_tweaker 1
$execute in $(dimension) if loaded $(x2) $(y2) $(z2) run scoreboard players set force_loaded spawner_tweaker 0
$execute if score force_loaded spawner_tweaker matches 1.. in $(dimension) run forceload add $(x2) $(z2)
$execute in $(dimension) positioned $(x2) $(y2) $(z2) if score force_loaded spawner_tweaker matches 0 align xyz run summon item_display ~0.5 ~0.5 ~0.5 {Tags:["st_primer"],Glowing:1b,width:100f,height:100f,interpolation_duration:2,teleport_duration:2,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:glass",Count:1b}}
$execute in $(dimension) positioned $(x2) $(y2) $(z2) align xyz positioned ~0.5 ~0.5 ~0.5 run team join spawner_tweaker_green @e[distance=..1,limit=1,sort=nearest,tag=st_primer,type=item_display]

#debug
#$say $(dimension) if loaded $(x2) $(y2) $(z2)