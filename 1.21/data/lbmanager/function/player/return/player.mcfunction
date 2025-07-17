data modify storage lbmanager:temp data.UUID set from entity @s UUID
data modify storage lbmanager:temp data.after_task set value "function #lbmanager:player/respawn"
function lbmanager:commands/get_player_data with storage lbmanager:temp data
function lbmanager:commands/team_spawn with storage lbmanager:temp data
data remove storage lbmanager:temp data