scoreboard players set success lbmanager.main 1

$execute unless entity $(name) run function lbmanager:commands/exceptions/player_not_founded
$execute as $(name) unless entity @s[type=player] run function lbmanager:commands/exceptions/is_not_player
$execute as $(name) if entity @s[type=player,tag=!lbmanager.in_team] run function lbmanager:commands/exceptions/player_not_inteam

execute if score success lbmanager.main matches 0 run return 0

$data modify storage lbmanager:temp data.UUID set from entity $(name) UUID
function lbmanager:commands/get_player_data with storage lbmanager:temp data
function lbmanager:commands/remove_player_data with storage lbmanager:temp data
data remove storage lbmanager:temp data

$tag $(name) remove lbmanager.in_team