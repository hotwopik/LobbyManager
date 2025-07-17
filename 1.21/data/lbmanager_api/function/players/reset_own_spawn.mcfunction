execute unless entity @s[type=player] run return run function lbmanager:commands/exceptions/exception {level:"error",log:"is_not_player"}

data modify storage lbmanager:temp data.UUID set from entity @s UUID
function lbmanager:commands/reset_own_spawn with storage lbmanager:temp data
function #lbmanager:player/own_spawn_reset