#Ticks and kills torches
scoreboard players add @e[tag=st_box_light,type=block_display] prime_spawners 1
kill @e[tag=st_box_light,type=block_display,scores={prime_spawners=5..}]
execute if entity @e[tag=st_box_light,type=block_display,limit=1] run schedule function spawner_tweaker:spawner_priming/kill_torches 1t