scoreboard players set success lbmanager.main 1
$execute unless entity $(name) run function lbmanager:commands/exceptions/runtime {level:"error",log:"player_not_founded"}
execute if score success lbmanager.main matches 0 run return 0

$execute as $(name) run function lbmanager_api:players/tp_safe {x:$(x),y:$(y),z:$(z),x_rotation:$(x_rotation),y_rotation:$(y_rotation),dimension:$(dimension)}

return 1
#Value validation
$data get storage lbmanager:temp validation $(x)
$data get storage lbmanager:temp validation $(y)
$data get storage lbmanager:temp validation $(z)
$data get storage lbmanager:temp validation $(x_rotation)
$data get storage lbmanager:temp validation $(y_rotation)
$execute in $(dimension) run say j