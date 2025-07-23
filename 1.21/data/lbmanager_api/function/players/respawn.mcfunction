execute unless entity @s[type=player] run return run function lbmanager:commands/exceptions/exception {level:"error",log:"is_not_player"}

execute if score in_game lbmanager.main matches 0 if data storage lbmanager:main lobby run function lbmanager:commands/lobby {after_task:"function #lbmanager:player/respawn"}
execute if score in_game lbmanager.main matches 0 run return 1

data modify storage lbmanager:temp data.UUID set from entity @s UUID
data modify storage lbmanager:temp data.after_task set value "function #lbmanager:player/respawn"

execute store result score success lbmanager.main run function lbmanager:commands/own_spawn_check with storage lbmanager:temp data
execute if score success lbmanager.main matches 1 run return 1

function lbmanager:commands/get_player_data with storage lbmanager:temp data

execute if entity @s[tag=lbmanager.in_team] run function lbmanager:commands/team_spawn with storage lbmanager:temp data
execute if entity @s[tag=!lbmanager.in_team] if data storage lbmanager:main watching_point run function lbmanager:commands/watching_point {after_task:"function #lbmanager:player/respawn"}