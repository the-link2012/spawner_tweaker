#Happens when the player triggers a bulk highlight off a specific spawner

#Set the id to highlight
$scoreboard players set $highlight_id spawner_tweaker $(id)

#Highlighting the spawners
scoreboard players set @s highlight_spawners 600
function spawner_tweaker:highlight/trigger

#Reset flag
scoreboard players set $highlight_id spawner_tweaker -1
