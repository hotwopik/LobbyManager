$data modify storage lbmanager:temp validation set value $(spread)
execute store result score validation lbmanager.main run data get storage lbmanager:temp validation 1000

execute if score validation lbmanager.main matches 0 run scoreboard players set lobby_spread lbmanager.main 0
execute if score validation lbmanager.main matches 1.. run scoreboard players set lobby_spread lbmanager.main 1

execute if score validation lbmanager.main matches ..-1 run return run function lbmanager:commands/exceptions/exception {level:"error",log:"incorrect_spread"}
scoreboard players reset validation lbmanager.main

$data modify storage lbmanager:main lobby set value {x:$(x),y:$(y),z:$(z),spread:$(spread),x_rotation:$(x_rotation),y_rotation:$(y_rotation),dimension:$(dimension)}
function #lbmanager:game/lobby_changed with storage lbmanager:main lobby

return 1
#Value validation
$data get storage lbmanager:temp validation $(spread)
$data get storage lbmanager:temp validation $(x)
$data get storage lbmanager:temp validation $(y)
$data get storage lbmanager:temp validation $(z)
$data get storage lbmanager:temp validation $(x_rotation)
$data get storage lbmanager:temp validation $(y_rotation)
$execute in $(dimension) run say j