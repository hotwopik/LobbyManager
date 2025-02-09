data modify storage lbmanager:temp data.UUID set from entity @s UUID
function lbmanager:commands/get_player_data with storage lbmanager:temp data

execute if data storage lbmanager:temp data.team run function lbmanager:player/team/kick with storage lbmanager:temp data
data remove storage lbmanager:temp data