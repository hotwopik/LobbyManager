$execute if entity @s[type=player] run function lbmanager:commands/transfer/tp {x:$(x),y:$(y),z:$(z),yaw:$(yaw),pitch:$(pitch),dimension:$(dimension)}
$execute if entity @s[type=!player] in $(dimension) run tp @s $(x) $(y) $(z) $(yaw) $(pitch)

return 1
#Value validation
$data get storage lbmanager:temp validation $(x)
$data get storage lbmanager:temp validation $(y)
$data get storage lbmanager:temp validation $(z)
$data get storage lbmanager:temp validation $(yaw)
$data get storage lbmanager:temp validation $(pitch)
$execute in $(dimension) run say j