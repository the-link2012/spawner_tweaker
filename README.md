This datapack currently works from 1.21.2-1.21.4. For legacy versions, view branches on the repository.<br>
## How To Use
Look at a spawner with a spawner in your hand to open its settings & info. Right or left click to modify values, shift right or left click to scroll through the menu. <br>

Holding down shift allows placing spawners without pulling up the tweaking menu. Looking at a new spawner while tweaking for a full second will switch the selection. Selecting another spawner while holding sift will allow you to select mutltiple spawners to edit at once. <br>

### Bulk Editing
Any spawner you interact with will be registered in storage and assigned an id. Spawner ids are linked to their spawnpotentials, so multiple spawners can share the same id.<br>

You can prime all registered spawners using `/trigger prime_spawners set <ticks>` This works accross dimensions.<br>

If you want to bulk edit spawners of a specific id, modify that spawner in your world (by placing a new one in the same spot, or by using /data modify), then select it with spawner tweaker. You will be prompted on how you would like to bulk edit spawners that share the same id. Please make sure to place modified spawners on the same block, or else it will be registered as a new id.<br>

**Bulk-editing spawners with multiple SpawnPotentials will always choose a random SpawnPotential for each spawner's SpawnData, ignoring weights*<br>

### Main Options
`/trigger toggle_spawner_tweaker`<br>
Enables/disables spawner tweaker for you (default is on)<br>
`/trigger toggle_piercing_spawner_tweaker`<br>
Toggles if spawner tweaker's raycast halts when hitting solid blocks (default is piering)<br>
`/trigger give_spawner set <id>`<br>
Gives you a placable spawner<br>
`/trigger give_all_spawners`<br>
Generates barrels beneath you containing a spawner for each registered spawner id<br>
`/trigger delete_spawner_id set <id>`<br>
Removes a spawner's id and any corresponding spawner locations under that id<br>
`/scoreboard players set $modification_limit spawner_tweaker <spawners/tick>`<br>
Default of 20, how many spawners to attempt to modify each tick with priming/bulk edit<br>
`/scoreboard players set $search_range spawner_tweaker <range>`<br>
Default of 6, max of 15, cubical range to passively register spawners in, with negative numbers being none (ex. 10 would search a 20x20x20 sized cube centered on where creative mode players are looking at)<br>

### Niche Options
`/scoreboard players set $prime_range spawner_tweaker <range>`<br>
Default of -1, cubical range to prime spawners in, with negative numbers being infinite (ex. 100 would be a 200 sized cube centered on the player)<br>
`/scoreboard players set $reselect_ticks spawner_tweaker <ticks>`<br>
Default of 20, minimum of 1. How many ticks it takes for tweaker to select a new spawner<br>
`/execute positioned <x> <y> <z> run function spawner_tweaker:bulk_edit/trigger_update`<br>
Forces an id update for the spawner at that location (updates SpawnPotentials for that id)<br>
`/execute positioned <x> <y> <z> run function spawner_tweaker:bulk_edit/trigger_update`<br>
Forces a bulk spawner edit for the spawner at that location (updates all spawner attributes for that id)<br>
`/scoreboard players set $efficient_data spawner_tweaker 1`<br>
1 or 0, default 1. Wheather or not to delete unnecessary data in spawners when priming. Useful for reducing lag when publishing maps.<br>
`/scoreboard players set $data_population spawner_tweaker 1`<br>
1 or 0, default 1. Wheather or not to populate spawner data when priming/bulk editing; no mob will appear in the spawner until a player gets in range, useful if you use weights or want this effect.<br>

### Reuse and Contact
Feel free to use, modify, and distribute. This datapack is by link2012.<br>
Latest version at https://github.com/the-link2012/spawner_tweaker<br>
The pack is low impact so it is fine to keep in published maps.

For bugs, feedback, and update requests please message @link2012 on discord