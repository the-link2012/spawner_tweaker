#creates the spawn area dynamically
$data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-$(HalfSpawnVolume)f,-1.5f,-$(HalfSpawnVolume)f],scale:[$(SpawnVolume)f,3.0f,$(SpawnVolume)f]}}
