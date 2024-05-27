data modify storage lbmanager:temp data.UUID set from entity @s UUID
function lbmanager:commands/get_player_data with storage lbmanager:temp data
function lbmanager:player/return/team_spawn with storage lbmanager:temp data
data remove storage lbmanager:temp data