#Looop to make highlight displays

#Make marker babyyyy
$execute in $(dimension) positioned $(x) $(y) $(z) run summon item_display ~ ~ ~ {Tags:["st_primer","st_highlight"],Glowing:1b,width:100f,height:100f,interpolation_duration:2,teleport_duration:2,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:tinted_glass",Count:1b}}

#LOOP
data remove storage spawner_tweaker:temp highlight[0]
execute if data storage spawner_tweaker:temp highlight[0] run function spawner_tweaker:highlight/create_marker_loop with storage spawner_tweaker:temp highlight[0]