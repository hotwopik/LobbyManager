Minecraft library datapack for maps.</br>
Contains various tools for player and game sessions management.<br>
Supported minecraft versions: **1.20.2-1.21.4**

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
Sets watching point. Watching point will work as player spawn point while game is runing.</br>
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
Should datapack kick players from teams when game ends. Default to false.</br>
Arguments:
- mode - `0` if shouldn't, `1` if should.

`lbmanager_api:settings/kick_on_leave`</br>
Should datapack kick players from teams if it leaves the game. Player will be kicked anyway if it returns after own game end and kick after end is enabled. Default to true.</br>
Arguments:
- mode - `0` if shouldn't, `1` if should.

`lbmanager_api:settings/returns_to_start`</br>
If game is runing and player returns in own game after leave, should datapack teleport it to team spawn or watching point. Player will be teleported to watching point anyway if kick on leave is enabled. Default to true.</br>
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
Set team spawn. Team spawn will work as player spawn point while game is runing.<br>
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

`lbmanager_api:teams/get_team`</br>
Put team data to storage `lbmanager:out team`<br>
Arguments:
- team - team id

## Player tags
*Changing tags may cause unexpected errors*

`lbmanager.in_team` - player has team<br>
`lbmanager.team.<team id>` - player is in team with team id<br>
`lbmanager.config_status` - most likely player hasn't entity

## Scores
*Changing scores may cause unexpected errors*
### Global
`ingame lbmanager.main` - `0` if game isn't runing, `1` else<br>
`game_id lbmanager.main` - game session id<br>
### Teams
`<team id> lbmanager.teams.has_mc_team` - `1` if some Minecraft team bounded to datapack team, `0` else<br>
`<team id> lbmanager.teams.player_count` - current team player count<br>
`<team id> lbmanager.teams.max_count` - team player count maximum

## Function tags (Events)
### Global
`#lbmanager:after_init`<br>
Runs after datapack first load, before `#lbmanager:after_load`.

`#lbmanager:after_load`<br>
Runs after datapack load.

### Game
`#lbmanager:game/started`<br>
Runs after game session start.

`#lbmanager:game/ended`<br>
Runs after game session end.

`#lbmanager:game/lobby_changed`<br>
Runs after lobby position change.

`#lbmanager:game/lobby_removed`<br>
Runs after lobby remove.

`#lbmanager:game/watching_point_changed`<br>
Runs after watching point change.

`#lbmanager:game/watching_point_removed`<br>
Runs after watching point remove.

`#lbmanager:game/game_tick`<br>
Runs every tick if game is runing.

`#lbmanager:game/lobby_tick`<br>
Runs every tick if game isn't runing.

### Players
`#lbmanager:player/first_join`<br>
Runs as player that join first time.

`#lbmanager:player/join`<br>
Runs as joining player.

`#lbmanager:player/respawn`<br>
Runs as player that was respawned by the game or using some of respawn function.

`#lbmanager:player/game/start_playing`<br>
Runs as player in teams when game start.

`#lbmanager:player/game/start_watching`<br>
Runs as player not in team when game start.

`#lbmanager:player/game/end_playing`<br>
Runs as player in teams when game ends.

`#lbmanager:player/game/end_watching`<br>
Runs as player not in team when game ends.

`#lbmanager:player/return/player_returned`<br>
Runs as player in team that returns in own game.

`#lbmanager:player/return/return_after_game`<br>
Runs as player that returns after own game.

`#lbmanager:player/return/watcher_returned`<br>
Runs as player not in team that returns in own game.

`#lbmanager:player/team/join_team`<br>
Runs as player that join team.<br>
Context:
- team - team id that was joined

`#lbmanager:player/team/leave_team`<br>
Runs as player that leave team.<br>
Context:
- team - team id that was leaved

`#lbmanager:player/team/leave_game_in_team`<br>
Runs when player in team leaves the game.<br>
Context:
- team - team id
- uuid - uuid of player is array format

### Settings
`#lbmanager:settings/kick_after_end_changed`<br>
Runs when kick after end changed.

`#lbmanager:settings/kick_on_leave_changed`<br>
Runs when kick on leave changed.

`#lbmanager:settings/returns_to_start_changed`<br>
Runs when returns to start changed.

`#lbmanager:settings/team_join_mode_changed`<br>
Runs when team join mode changed.

### Teams
`#lbmanager:team/craeted`<br>
Runs when team created.<br>
Context:
- team - team id
- max_count - max team size

`#lbmanager:team/modified`<br>
Runs when team modified.<br>
Context:
- team - team id
- max_count - max team size

`#lbmanager:team/removed`<br>
Runs when team remove.<br>
Context:
- team - team id

`#lbmanager:team/spawn_changed`<br>
Runs when team spawn changed.<br>
Context:
- team - team id
- x - x position
- y - y position
- z - z position
- spread - spreading radius. Disabled if set to `0`
- x_rotation - player rotation on x axys
- y_rotation - player rotation on y axys
- dimension - dimension

`#lbmanager:team/spawn_removed`<br>
Runs when team spawn resets.<br>
Context:
- team - team id

## Translations
Datapack support message changing using `lbmanager:translation` storage.<br>
Translation command example:
```mcfunction
data merge storage lbmanager:translation {\
    error:'{"text":"[ERROR] ",color:red}',\
    warn:'{"text":"[WARN] ",color:yellow}',\
    exception:{\
        incorrect_boolean:'{"text":"Field mode must be 0 or 1. Changed to 0}',\
        incorrect_join_mode:'{"text":"Field mode must be none, inlobby or allways. Changed to none"}',\
        incorrect_spread:'{"text":"Spread must be a positive"}',\
        is_not_player:'{"text":"Entity isn\'t player"}',\
        minecraft_team_not_exist:'{"text":"Given Minecraft team is not exist"}',\
        team_not_exist:'{"text":"Given team not exist"}',\
        lobby_not_exist:'{"text":"Lobby does not exist"}',\
        watching_point_not_exist:'{"text":"Watching point does not exist"}',\
    },\
    runtime:{\
        game_allready_started:'{"text":"Game allready started"}',\
        game_isnt_started:'{"text":"Game isn\'t started"}',\
        player_not_founded:'{"text":"Player not founded"}',\
        player_not_in_team:'{"text":"Player not in team"}',\
        player_allready_in_team:'{"text":"Player allready in team"}',\
    },\
    list:{\
        no_teams:'{"text":"There is no teams"}',\
        teams:'{"text":"Teams:"}',\
        minecraft_team:'{"text":"Minecraft team: "}',\
        max_count:'{"text":"Max count: "}',\
        player_count:'{"text":"Player count: "}'\
    }\
}
```