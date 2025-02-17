This datapack currently works from 1.21.2-1.21.4. For legacy versions, view branches on the repository.<br>
## How To Use
Look at a spawner with a spawner in your hand to open its settings & info. Right or left click to modify values, shift right or left click to scroll through the menu. 
t
Holding down shift allows placing spawners without pulling up the tweaking menu. Looking at a new spawner while tweaking for a full second will switch the selection. Selecting another spawner while holding sift will allow you to select mutltiple spawners to edit at once. 

Any spawner you interact with will be registered. You can prime all registered spawners using `/trigger prime_spawners set <ticks>` This works accross dimensions.

### Options
`/trigger toggle_spawner_tweaker`<br>
Enables/disables spawner tweaker for you (default is on)<br>
`/trigger toggle_piercing_spawner_tweaker`<br>
Toggles if spawner tweaker's raycast halts when hitting solid blocks (default is piering)<br>
`/scoreboard players set $modification_limit spawner_tweaker <spawners/tick>`<br>
Default of 20, how many spawners to attempt to modify/load each tick<br>
`/scoreboard players set $range spawner_tweaker <range>`<br>
Default of -1, cubical range to prime spawners in, with negative numbers being infinite (ex. 100 would be a 200 sized cube centered on the player)<br>
`/scoreboard players set $efficient_data spawner_tweaker 1`<br>
1 or 0, default 1. Wheather or not to delete unnecessary data when priming spawners.

### Reuse and Contact
Feel free to use, modify, and distribute. This datapack is by link2012.<br>
Latest version at https://github.com/the-link2012/spawner_tweaker<br>
The pack is low impact so it is fine to keep in published maps.

For bugs, feedback, and update requests please message @link2012 on discord