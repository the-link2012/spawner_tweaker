#I HATE MOJANG IT IS SO STUPID I HATE IT I HATE IT
#So, um, you can't remove loot table data. Yes, it is GIGA dumb. I am seeething >:(

data modify storage spawner_tweaker:temp mojang_sucks set value {block:"minecraft:chest",facing:"",waterlogged:"",type:"",open:""}

execute if block ~ ~ ~ #spawner_tweaker:container[facing=up] run data modify storage spawner_tweaker:temp mojang_sucks.facing set value "facing=up"
execute if block ~ ~ ~ #spawner_tweaker:container[facing=down] run data modify storage spawner_tweaker:temp mojang_sucks.facing set value "facing=down"
execute if block ~ ~ ~ #spawner_tweaker:container[facing=east] run data modify storage spawner_tweaker:temp mojang_sucks.facing set value "facing=east"
execute if block ~ ~ ~ #spawner_tweaker:container[facing=north] run data modify storage spawner_tweaker:temp mojang_sucks.facing set value "facing=north"
execute if block ~ ~ ~ #spawner_tweaker:container[facing=west] run data modify storage spawner_tweaker:temp mojang_sucks.facing set value "facing=west"
execute if block ~ ~ ~ #spawner_tweaker:container[facing=south] run data modify storage spawner_tweaker:temp mojang_sucks.facing set value "facing=south"

execute if block ~ ~ ~ #spawner_tweaker:container[waterlogged=true] run data modify storage spawner_tweaker:temp mojang_sucks.waterlogged set value ",waterlogged=true"
execute if block ~ ~ ~ #spawner_tweaker:container[waterlogged=false] run data modify storage spawner_tweaker:temp mojang_sucks.waterlogged set value ",waterlogged=false"

execute if block ~ ~ ~ #spawner_tweaker:container[open=true] run data modify storage spawner_tweaker:temp mojang_sucks.open set value ",open=true"
execute if block ~ ~ ~ #spawner_tweaker:container[open=false] run data modify storage spawner_tweaker:temp mojang_sucks.open set value ",open=false"

execute if block ~ ~ ~ #spawner_tweaker:container[type=left] run data modify storage spawner_tweaker:temp mojang_sucks.type set value ",type=left"
execute if block ~ ~ ~ #spawner_tweaker:container[type=right] run data modify storage spawner_tweaker:temp mojang_sucks.type set value ",type=right"
execute if block ~ ~ ~ #spawner_tweaker:container[type=single] run data modify storage spawner_tweaker:temp mojang_sucks.type set value ",type=single"

execute if block ~ ~ ~ minecraft:chest run data modify storage spawner_tweaker:temp mojang_sucks.block set value "minecraft:chest"
execute if block ~ ~ ~ minecraft:barrel run data modify storage spawner_tweaker:temp mojang_sucks.block set value "minecraft:barrel"
execute if block ~ ~ ~ minecraft:trapped_chest run data modify storage spawner_tweaker:temp mojang_sucks.block set value "minecraft:trapped_chest"
execute if block ~ ~ ~ minecraft:shulker_box run data modify storage spawner_tweaker:temp mojang_sucks.block set value "minecraft:shulker_box"

execute if block ~ ~ ~ minecraft:white_shulker_box run data modify storage spawner_tweaker:temp mojang_sucks.block set value "minecraft:white_shulker_box"
execute if block ~ ~ ~ minecraft:gray_shulker_box run data modify storage spawner_tweaker:temp mojang_sucks.block set value "minecraft:gray_shulker_box"
execute if block ~ ~ ~ minecraft:light_gray_shulker_box run data modify storage spawner_tweaker:temp mojang_sucks.block set value "minecraft:light_gray_shulker_box"
execute if block ~ ~ ~ minecraft:black_shulker_box run data modify storage spawner_tweaker:temp mojang_sucks.block set value "minecraft:black_shulker_box"
execute if block ~ ~ ~ minecraft:brown_shulker_box run data modify storage spawner_tweaker:temp mojang_sucks.block set value "minecraft:brown_shulker_box"
execute if block ~ ~ ~ minecraft:red_shulker_box run data modify storage spawner_tweaker:temp mojang_sucks.block set value "minecraft:red_shulker_box"
execute if block ~ ~ ~ minecraft:orange_shulker_box run data modify storage spawner_tweaker:temp mojang_sucks.block set value "minecraft:orange_shulker_box"
execute if block ~ ~ ~ minecraft:yellow_shulker_box run data modify storage spawner_tweaker:temp mojang_sucks.block set value "minecraft:yellow_shulker_box"
execute if block ~ ~ ~ minecraft:lime_shulker_box run data modify storage spawner_tweaker:temp mojang_sucks.block set value "minecraft:lime_shulker_box"
execute if block ~ ~ ~ minecraft:green_shulker_box run data modify storage spawner_tweaker:temp mojang_sucks.block set value "minecraft:green_shulker_box"
execute if block ~ ~ ~ minecraft:cyan_shulker_box run data modify storage spawner_tweaker:temp mojang_sucks.block set value "minecraft:cyan_shulker_box"
execute if block ~ ~ ~ minecraft:light_blue_shulker_box run data modify storage spawner_tweaker:temp mojang_sucks.block set value "minecraft:light_blue_shulker_box"
execute if block ~ ~ ~ minecraft:blue_shulker_box run data modify storage spawner_tweaker:temp mojang_sucks.block set value "minecraft:blue_shulker_box"
execute if block ~ ~ ~ minecraft:purple_shulker_box run data modify storage spawner_tweaker:temp mojang_sucks.block set value "minecraft:purple_shulker_box"
execute if block ~ ~ ~ minecraft:magenta_shulker_box run data modify storage spawner_tweaker:temp mojang_sucks.block set value "minecraft:magenta_shulker_box"
execute if block ~ ~ ~ minecraft:pink_shulker_box run data modify storage spawner_tweaker:temp mojang_sucks.block set value "minecraft:pink_shulker_box"

function spawner_tweaker:chests/randomizer/i_hate_mojang2 with storage spawner_tweaker:temp mojang_sucks