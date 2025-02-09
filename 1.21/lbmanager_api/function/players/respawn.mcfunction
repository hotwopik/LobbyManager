execute unless entity @s[type=player] run return run function lbmanager:commands/exceptions/is_not_player

data modify storage lbmanager:temp data.UUID set from entity @s UUID
function lbmanager:commands/get_player_data with storage lbmanager:temp data

execute if entity @s[tag=lbmanager.in_team] run function lbmanager:commands/team_spawn with storage lbmanager:temp data
execute if entity @s[tag=!lbmanager.in_team] if data storage lbmanager:main watching_point run function lbmanager:commands/watching_point
function #lbmanager:player/respawn