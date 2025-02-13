#Generates the bossbar for the spawner for those tweaking
$bossbar add spawner_tweaker_$(tweaker_id) $(name)
$bossbar set spawner_tweaker_$(tweaker_id) color white
$bossbar set spawner_tweaker_$(tweaker_id) max 100
$bossbar set spawner_tweaker_$(tweaker_id) value 100
$bossbar set spawner_tweaker_$(tweaker_id) players @s
$bossbar set spawner_tweaker_$(tweaker_id) style progress
