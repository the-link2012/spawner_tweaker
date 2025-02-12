#Ticks and kills displays
scoreboard players add @e[tag=st_primer,type=item_display] prime_spawners 1
kill @e[tag=st_primer,type=item_display,scores={prime_spawners=60..}]
execute if entity @e[tag=st_primer,type=item_display,limit=1] run schedule function spawner_tweaker:spawner_priming/kill_displays 1t