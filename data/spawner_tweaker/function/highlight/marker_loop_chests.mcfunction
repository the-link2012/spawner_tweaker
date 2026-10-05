#Looop to make highlight displays

#Make marker babyyyy
#Different for full blocks vs chests
$execute in $(dimension) positioned $(x) $(y) $(z) if block ~ ~ ~ #spawner_tweaker:chests{Items:[{}]} run summon item_display ~ ~ ~ {Tags:["st_primer","st_highlight_chests"],Glowing:1b,width:100f,height:100f,interpolation_duration:2,teleport_duration:2,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1.0f],right_rotation:[0f,0f,0f,1.0f],translation:[0.0f,-0.055f,0.0f],scale:[0.85f,0.85f,0.85]},item:{id:"minecraft:tinted_glass",count:1b}}

$execute in $(dimension) positioned $(x) $(y) $(z) unless block ~ ~ ~ #spawner_tweaker:chests if block ~ ~ ~ #spawner_tweaker:container{Items:[{}]} run summon item_display ~ ~ ~ {Tags:["st_primer","st_highlight_chests"],Glowing:1b,width:100f,height:100f,interpolation_duration:2,teleport_duration:2,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1.0f],right_rotation:[0f,0f,0f,1.0f],translation:[0.005f,0.005f,0.005f],scale:[0.98f,0.98f,0.98f]},item:{id:"minecraft:tinted_glass",count:1b}}

#Make double chests look nice
$execute in $(dimension) positioned $(x) $(y) $(z) if block ~ ~ ~ #spawner_tweaker:chests{Items:[{}]} positioned ~0.5 ~ ~ if block ~0.5 ~ ~ #spawner_tweaker:chests{Items:[{}]} unless block ~0.5 ~ ~ #spawner_tweaker:chests[type=single] run summon item_display ~ ~ ~ {Tags:["st_primer","st_highlight_chests"],Glowing:1b,width:100f,height:100f,interpolation_duration:2,teleport_duration:2,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1.0f],right_rotation:[0f,0f,0f,1.0f],translation:[0.0f,-0.055f,0.0f],scale:[0.85f,0.85f,0.85]},item:{id:"minecraft:tinted_glass",count:1b}}
$execute in $(dimension) positioned $(x) $(y) $(z) if block ~ ~ ~ #spawner_tweaker:chests{Items:[{}]} positioned ~ ~ ~0.5 if block ~ ~ ~0.5 #spawner_tweaker:chests{Items:[{}]} unless block ~ ~ ~0.5 #spawner_tweaker:chests[type=single] run summon item_display ~ ~ ~ {Tags:["st_primer","st_highlight_chests"],Glowing:1b,width:100f,height:100f,interpolation_duration:2,teleport_duration:2,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1.0f],right_rotation:[0f,0f,0f,1.0f],translation:[0.0f,-0.055f,0.0f],scale:[0.85f,0.85f,0.85]},item:{id:"minecraft:tinted_glass",count:1b}}

#LOOP
data remove storage spawner_tweaker:temp highlight[0]
execute if data storage spawner_tweaker:temp highlight[0] run function spawner_tweaker:highlight/marker_loop_chests with storage spawner_tweaker:temp highlight[0]