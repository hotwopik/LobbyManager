scoreboard players set success lbmanager.main 1
execute unless entity @s[type=player] run function lbmanager:commands/exceptions/is_not_player
execute if score success lbmanager.main matches 0 run return 0

execute if score in_game lbmanager.main matches 0 if data storage lbmanager:main lobby run function lbmanager:commands/lobby
execute if score in_game lbmanager.main matches 0 run return 1

data modify storage lbmanager:temp data.UUID set from entity @s UUID
function lbmanager:commands/get_player_data with storage lbmanager:temp data

execute if entity @s[tag=lbmanager.in_team] run function lbmanager:commands/team_spawn with storage lbmanager:temp data
execute if entity @s[tag=!lbmanager.in_team] if data storage lbmanager:main watching_point run function lbmanager:commands/watching_point
function #lbmanager:player/respawn