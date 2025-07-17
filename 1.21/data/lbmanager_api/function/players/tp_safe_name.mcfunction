$execute unless entity $(name) run return run function lbmanager:commands/exceptions/runtime {level:"error",log:"player_not_founded"}

$execute as $(name) run function lbmanager_api:players/tp_safe {x:$(x),y:$(y),z:$(z),yaw:$(yaw),pitch:$(pitch),dimension:$(dimension)}

return 1
#Value validation
$data get storage lbmanager:temp validation $(x)
$data get storage lbmanager:temp validation $(y)
$data get storage lbmanager:temp validation $(z)
$data get storage lbmanager:temp validation $(yaw)
$data get storage lbmanager:temp validation $(pitch)
$execute in $(dimension) run say j