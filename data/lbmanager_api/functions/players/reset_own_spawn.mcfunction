scoreboard players set success lbmanager.main 1
execute unless entity @s[type=player] run function lbmanager:commands/exceptions/exception {level:"error",log:"is_not_player"}
execute if score success lbmanager.main matches 0 run return 0

data modify storage lbmanager:temp data.UUID set from entity @s UUID
function lbmanager:commands/reset_own_spawn with storage lbmanager:temp data
function #lbmanager:player/own_spawn_reset