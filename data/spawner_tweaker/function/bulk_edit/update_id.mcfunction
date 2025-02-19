#Updates the data in the spawner id to match the new update

$data remove storage spawner_tweaker:temp Ids[{id:$(id)}]
data modify storage spawner_tweaker:temp Ids append from storage spawner_tweaker:temp update_to