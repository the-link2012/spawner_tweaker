#Fixes the old spawner format because of a dumb mojang bug

scoreboard players set n temp 0
data modify storage spawner_tweaker:temp temp.loop.n set value 0
data modify storage spawner_tweaker:temp temp.loop.n1 set value 1

function spawner_tweaker:register/fix_old/loop with storage spawner_tweaker:temp temp.loop

tellraw @a {"color":"green","text":"Tweaker data format updated"}
