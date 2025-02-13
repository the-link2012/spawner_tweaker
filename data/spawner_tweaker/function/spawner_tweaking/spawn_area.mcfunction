#creates the spawn area dynamically

#Interpolation is visually bugged for some silly reason, idk...
$data merge entity @s {interpolation_duration:2,teleport_duration:12,transformation:[$(SpawnVolume)f,0f,0f,-$(HalfSpawnVolume)f,0f,3f,0f,-1.5f,0f,0f,$(SpawnVolume)f,-$(HalfSpawnVolume)f,0f,0f,0f,1f]}