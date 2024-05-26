scoreboard players set success lbmanager.main 1

execute unless entity @s[type=player] run function lbmanager:commands/exceptions/is_not_player
execute if entity @s[type=player,tag=!lbmanager.in_team] run function lbmanager:commands/exceptions/player_not_inteam

execute if score success lbmanager.main matches 0 run return 0

data modify storage lbmanager:temp data.UUID set from entity @s UUID
function lbmanager:commands/get_player_data with storage lbmanager:temp data
function lbmanager:commands/remove_player_data with storage lbmanager:temp data
data remove storage lbmanager:temp data

tag @s remove lbmanager.in_team
function #lbmanager:player/leave_team