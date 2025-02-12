#Write spawndata to spawnpotentials if none exist
execute unless data block ~ ~ ~ SpawnPotentials[0] run tag @s add tweaker_data_replace
execute if entity @s[tag=tweaker_data_replace] run data modify storage spawner_tweaker:temp SpawnData set value [{data:{entity:{id:"minecraft:item"}},weight:1}]
execute if entity @s[tag=tweaker_data_replace] run data modify storage spawner_tweaker:temp SpawnData[0].data set from block ~ ~ ~ SpawnData
execute if entity @s[tag=tweaker_data_replace] run data modify block ~ ~ ~ SpawnPotentials set from storage spawner_tweaker:temp SpawnData
tag @s remove tweaker_data_replace

#Write spawner to data
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {UUID:[I;-44439381,467092815,-2143523091,-286623066]}
data modify storage spawner_tweaker:temp Spawner set value {Pos:[0.0d,0.0d,0.0d],dimension:"minecraft:overworld"}
data modify storage spawner_tweaker:temp Spawner.Pos set from entity fd59e8ab-1bd7-454f-803c-6eedeeea7aa6 Pos
data modify storage spawner_tweaker:temp Spawner.dimension set from entity @s Dimension
kill fd59e8ab-1bd7-454f-803c-6eedeeea7aa6

function spawner_tweaker:spawner_priming/prune with storage spawner_tweaker:temp Spawner
data modify storage spawner_tweaker:temp Spawners prepend from storage spawner_tweaker:temp Spawner

#Happens when a raycast bumps into a spawner and needs to select it
execute unless entity 38e349da-d05c-47c9-85c5-dad3300233dc run scoreboard players set setting spawner_tweaker 4
execute unless entity 38e349da-d05c-47c9-85c5-dad3300233dc run tellraw @s[tag=!st_explain] {"text":"Spawner marked. Left or Right click to tweak. Crouch+click to change element being tweaked.","color":"white","bold":false,"italic":false}
execute unless entity 38e349da-d05c-47c9-85c5-dad3300233dc align xyz positioned ~0.5 ~0.5 ~0.5 run summon item_display ~ ~ ~ {Tags:["st_display"],UUID:[I;954419674,-799258679,-2050630957,805450716],Glowing:1b,width:100f,height:100f,interpolation_duration:5,teleport_duration:5,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:glass",Count:1b}}
execute align xyz positioned ~0.5 ~0.5 ~0.5 if entity 38e349da-d05c-47c9-85c5-dad3300233dc run tp 38e349da-d05c-47c9-85c5-dad3300233dc ~ ~ ~
team join spawner_tweaker_green 38e349da-d05c-47c9-85c5-dad3300233dc
tag @s add st_explain

#Extra display for spawner range
execute unless entity 4a3f09af-b376-485e-a73a-a4566af88748 run summon block_display ~ ~ ~ {Tags:["st_box"],UUID:[I;1245645231,-1284093858,-1489329066,1794672456],view_range:100f,width:100f,height:100f,interpolation_duration:2,teleport_duration:2,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},block_state:{Name:"minecraft:red_stained_glass"}}
ride 4a3f09af-b376-485e-a73a-a4566af88748 mount 38e349da-d05c-47c9-85c5-dad3300233dc

#Displays for radius
execute unless entity 2ebaaca0-b021-44a3-b0ee-e757109f6f28 run summon text_display ~ ~ ~ {UUID:[I;783985824,-1339997021,-1326520489,278884136],Glowing:1b,view_range:100f,width:100f,height:100f,billboard:"vertical",interpolation_duration:5,teleport_duration:5,Rotation:[0F,-90F],Tags:["st_radius_x","st_radius"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.7f,0f],scale:[25f,25f,25f]},text:'{"text":"⬤","color":"red","italic":false}',text_opacity:120,background:16711680}
ride 2ebaaca0-b021-44a3-b0ee-e757109f6f28 mount 4a3f09af-b376-485e-a73a-a4566af88748
execute unless entity 44e9d1cf-3203-443e-951d-93bc841abf3f run summon text_display ~ ~ ~ {UUID:[I;1156174287,839074878,-1793223748,-2078621889],Glowing:1b,view_range:100f,width:100f,height:100f,billboard:"fixed",interpolation_duration:5,teleport_duration:5,Rotation:[0F,0F],Tags:["st_radius_y","st_radius"],brightness:{sky:15,block:15},transformation:[-0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,-1.0000f,0.0000f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],text:'{"text":"⬤","color":"red","italic":false}',text_opacity:120,background:16711680}
ride 44e9d1cf-3203-443e-951d-93bc841abf3f mount 2ebaaca0-b021-44a3-b0ee-e757109f6f28
execute unless entity 6bfec13b-598f-4bae-a827-47d28c4ed07f run summon text_display ~ ~ ~ {UUID:[I;1811857723,1502563246,-1473820718,-1940991873],Glowing:1b,view_range:100f,width:100f,height:100f,billboard:"fixed",interpolation_duration:5,teleport_duration:5,Rotation:[45F,0F],Tags:["st_radius_y","st_radius"],brightness:{sky:15,block:15},transformation:[-0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,-1.0000f,0.0000f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],text:'{"text":"⬤","color":"red","italic":false}',text_opacity:120,background:16711680}
ride 6bfec13b-598f-4bae-a827-47d28c4ed07f mount 44e9d1cf-3203-443e-951d-93bc841abf3f
execute unless entity da2312b0-3f93-4a23-924e-6e3c44671606 run summon text_display ~ ~ ~ {UUID:[I;-635235664,1066617379,-1840353732,1147606534],Glowing:1b,view_range:100f,width:100f,height:100f,billboard:"fixed",interpolation_duration:5,teleport_duration:5,Rotation:[90F,0F],Tags:["st_radius_y","st_radius"],brightness:{sky:15,block:15},transformation:[-0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,-1.0000f,0.0000f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],text:'{"text":"⬤","color":"red","italic":false}',text_opacity:120,background:16711680}
ride da2312b0-3f93-4a23-924e-6e3c44671606 mount 6bfec13b-598f-4bae-a827-47d28c4ed07f
execute unless entity d50c642b-1f61-4279-ac82-b466969b76b2 run summon text_display ~ ~ ~ {UUID:[I;-720608213,526467705,-1400720282,-1768196430],Glowing:1b,view_range:100f,width:100f,height:100f,billboard:"fixed",interpolation_duration:5,teleport_duration:5,Rotation:[135F,0F],Tags:["st_radius_y","st_radius"],brightness:{sky:15,block:15},transformation:[-0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,-1.0000f,0.0000f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],text:'{"text":"⬤","color":"red","italic":false}',text_opacity:120,background:16711680}
ride d50c642b-1f61-4279-ac82-b466969b76b2 mount da2312b0-3f93-4a23-924e-6e3c44671606

execute unless entity aec389bc-e396-41ac-8bef-85ebcf593123 run summon text_display ~ ~ ~ {UUID:[I;-1362916932,-476692052,-1947236885,-816238301],Glowing:1b,view_range:100f,width:100f,height:100f,billboard:"fixed",interpolation_duration:5,teleport_duration:5,Rotation:[0F,180F],Tags:["st_radius_y","st_radius"],brightness:{sky:15,block:15},transformation:[-0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,-1.0000f,0.0000f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],text:'{"text":"⬤","color":"red","italic":false}',text_opacity:120,background:16711680}
ride aec389bc-e396-41ac-8bef-85ebcf593123 mount d50c642b-1f61-4279-ac82-b466969b76b2
execute unless entity 4ca433fe-64bf-404d-bc76-e09f9f719902 run summon text_display ~ ~ ~ {UUID:[I;1285829630,1690255437,-1133059937,-1619945214],Glowing:1b,view_range:100f,width:100f,height:100f,billboard:"fixed",interpolation_duration:5,teleport_duration:5,Rotation:[45F,180F],Tags:["st_radius_y","st_radius"],brightness:{sky:15,block:15},transformation:[-0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,-1.0000f,0.0000f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],text:'{"text":"⬤","color":"red","italic":false}',text_opacity:120,background:16711680}
ride 4ca433fe-64bf-404d-bc76-e09f9f719902 mount aec389bc-e396-41ac-8bef-85ebcf593123
execute unless entity cc96b0f1-bdd5-498c-9e6d-64daba58daa8 run summon text_display ~ ~ ~ {UUID:[I;-862539535,-1110095476,-1636997926,-1168581976],Glowing:1b,view_range:100f,width:100f,height:100f,billboard:"fixed",interpolation_duration:5,teleport_duration:5,Rotation:[90F,180F],Tags:["st_radius_y","st_radius"],brightness:{sky:15,block:15},transformation:[-0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,-1.0000f,0.0000f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],text:'{"text":"⬤","color":"red","italic":false}',text_opacity:120,background:16711680}
ride cc96b0f1-bdd5-498c-9e6d-64daba58daa8 mount 4ca433fe-64bf-404d-bc76-e09f9f719902
execute unless entity d364a92f-4534-48b0-bf64-6da74289be62 run summon text_display ~ ~ ~ {UUID:[I;-748377809,1161054384,-1083937369,1116323426],Glowing:1b,view_range:100f,width:100f,height:100f,billboard:"fixed",interpolation_duration:5,teleport_duration:5,Rotation:[135F,180F],Tags:["st_radius_y","st_radius"],brightness:{sky:15,block:15},transformation:[-0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,-1.0000f,0.0000f,-0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],text:'{"text":"⬤","color":"red","italic":false}',text_opacity:120,background:16711680}
ride d364a92f-4534-48b0-bf64-6da74289be62 mount cc96b0f1-bdd5-498c-9e6d-64daba58daa8

#Radius under
execute unless entity e18bf975-d677-435c-9542-d3b0ec6685c5 run summon text_display ~ ~ ~ {UUID:[I;-510920331,-696827044,-1790782544,-328825403],Glowing:1b,view_range:100f,width:100f,height:100f,billboard:"vertical",interpolation_duration:5,teleport_duration:5,Rotation:[0F,90F],Tags:["st_radius_x2","st_radius_x","st_radius"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.7f,0f],scale:[25f,25f,25f]},text:'{"text":"⬤","color":"red","italic":false}',text_opacity:120,background:16711680}
ride e18bf975-d677-435c-9542-d3b0ec6685c5 mount d364a92f-4534-48b0-bf64-6da74289be62

#Player interactions
execute unless entity 267e6e48-4a17-42b3-bf89-dd2b69b0818d run summon interaction ~ ~ ~ {width:5.0f,height:2.0f,response:0b,Tags:["spawner_interaction"],UUID:[I;645819976,1243038387,-1081483989,1773175181]}
execute unless entity 603e1c72-9632-43e3-8ad2-aa6d803f9a8b run summon interaction ~ ~ ~ {width:5.0f,height:2.0f,response:0b,Tags:["spawner_interaction"],UUID:[I;1614683250,-1775090717,-1965905299,-2143315317]}

#sound
execute at @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 1
scoreboard players set swap_spawner spawner_tweaker 0