scoreboard players set success lbmanager.main 1
execute unless entity @s[type=player] run function lbmanager:commands/exceptions/exception {level:"error",log:"is_not_player"}
execute if score success lbmanager.main matches 0 run return 0

data modify storage lbmanager:temp data.UUID set from entity @s UUID
$data modify storage lbmanager:temp data.spawn set value {x:$(x),y:$(y),z:$(z),spread:$(spread),yaw:$(yaw),pitch:$(pitch),dimension:$(dimension)}

function lbmanager:commands/set_own_spawn with storage lbmanager:temp data
$function #lbmanager:player/own_spawn_changed {x:$(x),y:$(y),z:$(z),spread:$(spread),yaw:$(yaw),pitch:$(pitch),dimension:$(dimension)}

return 1
#Value validation
$data get storage lbmanager:temp validation $(x)
$data get storage lbmanager:temp validation $(y)
$data get storage lbmanager:temp validation $(z)
$data get storage lbmanager:temp validation $(spread)
$data get storage lbmanager:temp validation $(yaw)
$data get storage lbmanager:temp validation $(pitch)
$execute in $(dimension) run say j