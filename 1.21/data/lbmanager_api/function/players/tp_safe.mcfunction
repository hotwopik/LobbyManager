$execute if entity @s[type=player] run function lbmanager:commands/transfer/tp {x:$(x),y:$(y),z:$(z),x_rotation:$(x_rotation),y_rotation:$(y_rotation),dimension:$(dimension)}
$execute if entity @s[type=!player] in $(dimension) run tp @s $(x) $(y) $(z) $(x_rotation) $(y_rotation)

return 1
#Value validation
$data get storage lbmanager:temp validation $(x)
$data get storage lbmanager:temp validation $(y)
$data get storage lbmanager:temp validation $(z)
$data get storage lbmanager:temp validation $(x_rotation)
$data get storage lbmanager:temp validation $(y_rotation)
$execute in $(dimension) run say j