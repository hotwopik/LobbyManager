Minecraft library datapack for maps.</br>
Contains various tools for player and game sessions management.

# API
## Functions
### Game
`lbmanager_api:game/start_game`</br>
Starts new game session:
- Switch datapack to ingame mode
- Teleport players in teams to team spawns(if present)
- Teleport players not in teams to watching point(if present)

`lbmanager_api:game/end_game`</br>
Stop current game session:
- Switch datapack to inlobby mode
- Teleport players to lobby(if present)

`lbmanager_api:game/set_lobby`</br>
Sets lobby. It will not change world spawn or spawnRadius gamerule. You have to change this yourself if you need it.</br>
Arguments:
- x - x position
- y - y position
- z - z position
- spread - spreading radius. Disabled if set to `0`
- x_rotation - player rotation on x axys
- y_rotation - player rotation on y axys
- dimension - dimension

`lbmanager_api:game/remove_lobby`</br>
Reset lobby.

`lbmanager_api:game/set_watching_point`</br>
Sets watching point.</br>
Arguments:
- x - x position
- y - y position
- z - z position
- spread - spreading radius. Disabled if set to `0`
- x_rotation - player rotation on x axys
- y_rotation - player rotation on y axys
- dimension - dimension

`lbmanager_api:game/remove_watching_point`</br>
Reset watching point.

`lbmanager_api:game/respawn`</br>
Teleport players in all teams to their team spawn.

### Players
`lbmanager_api:players/add_to_team`</br>
If executor is player and team isn't full, add player to team.</br>
Arguments:
- team - id of team to add to

`lbmanager_api:players/add_to_team_name`</br>
Search player given with name and add it to team if team isn't full</br>
Arguments:
- team - id of team to add to
- name - player name

`lbmanager_api:players/remove_from_team`</br>
If executor is player, kick it from own team.

`lbmanager_api:players/remove_from_team_name`</br>
Search player with given name and kick it from own team.
Arguments:
- name - player name

`lbmanager_api:players/respawn`</br>
If executor is player and if game isn't started, teleport player to lobby. If game is started and player is in team, teleport player to team spawn, else teleport player to watching point.

`lbmanager_api:players/respawn_name`</br>
Do the same as function above but using player name.</br>
Arguments:
- name - player name

`lbmanager_api:players/tp_safe`</br>
Teleport player safely:</br>
If player entity exist, teleport it as default, else wait while player entity isn't created.</br>
Arguments:
- x - x position
- y - y position
- z - z position
- x_rotation - player rotation on x axys
- y_rotation - player rotation on y axys
- dimension - dimension

`lbmanager_api:players/tp_safe_name`</br>
Do the same as function above but using player name.</br>
Arguments:
- name - player name

### Setting
`lbmanager_api:settings/kick_after_end`</br>
Should datapack kick players from teams when game ends. Default to true.</br>
Arguments:
- mode - `0` if shouldn't, `1` if should.

`lbmanager_api:settings/kick_on_leave`</br>
Should datapack kick players from teams if it leaves the game. Player will be kicked anyway if it returns after own game end and kick after end is enabled. Default to true.</br>
Arguments:
- mode - `0` if shouldn't, `1` if should.

`lbmanager_api:settings/returns_to_start`</br>
If game is runing and player returns in own game after leave, should datapack teleport it to team spawn or watching point. Player will be teleported to watching point anyway if kick on leave is enabled. Default to false.</br>
Arguments:
- mode - `0` if shouldn't, `1` if should.

`lbmanager_api:settings/team_join_mode`</br>
Should datapack add players to teams when they join. Default to none.</br>
Arguments:
- mode - `none` if shouldn't, `inlobby` if only when game isn't runing, `allways` if allways

### Teams
`lbmanager_api:teams/list`</br>
Display current team list.

`lbmanager_api:teams/modify_team`</br>
Change team settings. If team isn't exist, create it.</br>
Arguments:
- team - team id
- name - team display name(actualy is never used), text component
- max_count - max size of team. If `-1`, will not has max size.

`lbmanager_api:teams/remove_team`</br>
Delete team.<br>
Arguments:
- team - id of team to delete

`lbmanager_api:teams/set_minecraft_team`</br>
Bundle Minecraft team to datapack team.<br>
Arguments:
- team - datapack team id
- minecraft_team - Minecraft team id

`lbmanager_api:teams/reset_minecraft_team`</br>
Unbundle Minecraft team from datapack team.<br>
Arguments:
- team - datapack team id

`lbmanager_api:teams/set_spawn`</br>
Set team spawn. Team spawn will not work as player spawn point.<br>
Arguments:
- team - team id
- x - x position
- y - y position
- z - z position
- spread - spreading radius. Disabled if set to `0`
- x_rotation - player rotation on x axys
- y_rotation - player rotation on y axys
- dimension - dimension

`lbmanager_api:teams/remove_spawn`</br>
Reset team spawn.<br>
Arguments:
- team - team id

`lbmanager_api:teams/respawn`</br>
If game is runing, teleport players in team to team spawn, else teleport players in team to lobby.<br>
Arguments:
- team - team id

## Player tags

`lbmanager.in_team` - player has team<br>
`lbmanager.team.<team id>` - player is in team with team id<br>
`lbmanager.config_status` - most likely player hasn't entity

## Function tags(Events)
### Global
`#lbmanager:after_init`<br>
Runs after datapack first load, before `#lbmanager:after_load`

`#lbmanager:after_load`<br>
Runs after datapack load

### Game
