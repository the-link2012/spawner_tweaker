This datapack currently works for minecraft 1.21.9-1.21.10. For legacy versions and backports, view branches on the repository.<br>

## How To Use
Look at a spawner with a spawner in your hand to open its settings & info. Right or left click to modify values, shift right or left click to scroll through the menu.<br>

Holding down shift allows placing spawners without pulling up the tweaking menu. Looking at a new spawner while tweaking will switch the selection. Selecting another spawner while holding shift will allow you to select mutltiple spawners to edit at once. <br>

You may type the command `/trigger spawner_tweaker_menu` at any time to access spawner tweaker's additional settings and functions.<br>

### Bulk Editing
Any spawner you interact with will be registered in storage and assigned an id. Spawner ids are linked to their spawnpotentials, so multiple spawners can share the same id.<br>

If you want to bulk edit spawners of a specific id, modify that spawner in your world (by placing a new one in the same spot, or by using /data modify), then select it with spawner tweaker. You will be prompted on how you would like to bulk edit spawners that share the same id. Please make sure to place modified spawners on the same block, or else it will be registered as a new id.<br>

Alternatively, drop your spawner while tweaking the spawner you wish to modify. This will always force the menu open, along with providing options to highlight spawners and transform spawners into the held spawner's id.<br>

**Bulk-editing spawners with multiple SpawnPotentials will always choose a random SpawnPotential for each spawner's SpawnData, ignoring weights*<br>

### Options
All options and additional functions have been moved to the in-game menu. Feel free to type `/trigger spawner_tweaker_menu` to access these options, functions, and documentation. Additional features will be added upon request. <br>

## Spawner and Chest Randomizer
**ALWAYS MAKE BACKUPS WHEN USING RANDOMIZERS**<br>
Spawner Tweaker comes with randomizer capabilities. Randomized spawners have their potentials and SpawnData randomized, but not other aspects such as player range, delay, and count. Container (chest) randomization swaps the contents or loot tables of all registered containers. Containers register into the system just as spawners do--either passively while looking around or by running volume checks.<br>
Before using the randomizer, make sure you first:<br>
* Remove problematic spawners (such as anti-cheese or potion) with `/trigger delete_spawner_id set <id>`, see all map spawners with `/trigger give_all_spawners`
* Remove problematic chests (such as dev chests and fleecy boxes) with `/trigger delete_nearby_chests set <range>`<br>

You may now run the chest and spawner randomizer functions.<br>

`/scoreboard players set $randomizer_seed spawner_tweaker <seed>`<br>
Sets the seed for the randomizer. If unassigned, a random seed will be chosen.<br>
`/function spawner_tweaker:randomizer/randomize_equally`<br>
Each spawner will choose a random id with equal probability.<br>
`/function spawner_tweaker:randomizer/randomize_weighted`<br>
Spawners in the map will be randomized, but keep their id distribution (so if your original map has 5 skeleton and 10 zombie spawners, the randomizer will have 5 sekeleton and 10 zombie spawners total).<br>
`/function spawner_tweaker:chests/randomizer/randomize`<br>
Randomizes all registered loot containers in the map (a loot container is any chest, barrel, or shulker that has items or a loot table)<br>
`/trigger delete_nearby_chests set <range>`<br>
Cubical range centered on yourself to remove chests from the chest id system. Use this to clear out chests inside of dev rooms or ones you always want to generate in the same spot.<br>

Known limitations:<br>
Randomized containers that had loot tables will cause block updates. This is because mojang doesn't allow /data remove on block loot tables.<br>

## Reuse and Contact
Feel free to use, modify, and distribute. This datapack is by link2012.<br>
Latest version at https://github.com/the-link2012/spawner_tweaker<br>
The pack is low impact so it is fine to keep in published maps.

For bugs, feedback, and update requests please message @link2012 on discord