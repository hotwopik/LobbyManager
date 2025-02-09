execute unless entity @s[type=player] run return run function lbmanager:commands/exceptions/is_not_player
execute if entity @s[tag=!lbmanager.in_team] run return run function lbmanager:commands/exceptions/player_not_inteam

data modify storage lbmanager:temp data.UUID set from entity @s UUID
function lbmanager:commands/get_player_data with storage lbmanager:temp data
function lbmanager:commands/remove_player_data with storage lbmanager:temp data
data remove storage lbmanager:temp data