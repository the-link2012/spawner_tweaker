#Grabs the id of the spawner that we are about to give to the player

#Set up data
$data modify storage spawner_tweaker:temp give.spawner set from storage spawner_tweaker:temp Ids[{id:$(id)}]
data remove storage spawner_tweaker:temp give.spawner.id
data modify storage spawner_tweaker:temp give.MaxNearbyEntities set from storage spawner_tweaker:temp give.spawner.MaxNearbyEntities
data modify storage spawner_tweaker:temp give.Delay set from storage spawner_tweaker:temp give.spawner.Delay
data modify storage spawner_tweaker:temp give.MaxSpawnDelay set from storage spawner_tweaker:temp give.spawner.MaxSpawnDelay
data modify storage spawner_tweaker:temp give.MinSpawnDelay set from storage spawner_tweaker:temp give.spawner.MinSpawnDelay
data modify storage spawner_tweaker:temp give.SpawnCount set from storage spawner_tweaker:temp give.spawner.SpawnCount
data modify storage spawner_tweaker:temp give.SpawnRange set from storage spawner_tweaker:temp give.spawner.SpawnRange
data modify storage spawner_tweaker:temp give.MinBlockLight set from storage spawner_tweaker:temp give.spawner.SpawnPotentials[0].data.custom_spawn_rules.block_light_limit[0]
data modify storage spawner_tweaker:temp give.MaxBlockLight set from storage spawner_tweaker:temp give.spawner.SpawnPotentials[0].data.custom_spawn_rules.block_light_limit[1]
data modify storage spawner_tweaker:temp give.MinSkyLight set from storage spawner_tweaker:temp give.spawner.SpawnPotentials[0].data.custom_spawn_rules.sky_light_limit[0]
data modify storage spawner_tweaker:temp give.MaxSkyLight set from storage spawner_tweaker:temp give.spawner.SpawnPotentials[0].data.custom_spawn_rules.sky_light_limit[1]
data modify storage spawner_tweaker:temp give.Health set from storage spawner_tweaker:temp give.spawner.SpawnPotentials[0].data.entity.Health
data modify storage spawner_tweaker:temp give.Absorption set from storage spawner_tweaker:temp give.spawner.SpawnPotentials[0].data.entity.AbsorptionAmount
data modify storage spawner_tweaker:temp give.Attack set from storage spawner_tweaker:temp give.spawner.SpawnPotentials[0].data.entity.attributes[{id:"minecraft:attack_damage"}].base
data modify storage spawner_tweaker:temp give.name set from storage spawner_tweaker:temp give.spawner.name






#Ouputs
execute if data storage spawner_tweaker:temp give.spawner run say id exists
execute unless data storage spawner_tweaker:temp give.spawner run tellraw @s {"color":"red","text":"This spawner id does not exist"}
execute unless data storage spawner_tweaker:temp give.spawner run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1