scoreboard players set success lbmanager.main 1
execute unless entity @s[type=player] run function lbmanager:commands/exceptions/exception {level:"error",log:"is_not_player"}
execute if entity @s[type=player,tag=!lbmanager.in_team] run function lbmanager:commands/exceptions/runtime {level:"error",log:"player_not_in_team"}
execute if score success lbmanager.main matches 0 run return 0

data modify storage lbmanager:temp data.UUID set from entity @s UUID
function lbmanager:commands/get_player_data with storage lbmanager:temp data
function lbmanager:commands/remove_player_data with storage lbmanager:temp data
data remove storage lbmanager:temp data