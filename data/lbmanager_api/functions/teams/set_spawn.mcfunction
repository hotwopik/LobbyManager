scoreboard players set success lbmanager.main 1
$execute unless data storage lbmanager:main teams."$(team)" run function lbmanager:commands/exceptions/exception {level:"error",log:"team_not_exist"}

$data modify storage lbmanager:temp validation set value $(spread)
execute store result score validation lbmanager.main run data get storage lbmanager:temp validation 1000

$execute if score validation lbmanager.main matches 0 run scoreboard players set $(team) lbmanager.teams.spread 0
$execute if score validation lbmanager.main matches 1.. run scoreboard players set $(team) lbmanager.teams.spread 1

execute if score validation lbmanager.main matches ..-1 run function lbmanager:commands/exceptions/exception {level:"error",log:"incorrect_spread"}
scoreboard players reset validation lbmanager.main

execute if score success lbmanager.main matches 0 run return 0

$data modify storage lbmanager:main teams."$(team)".spawn set value {x:$(x),y:$(y),z:$(z),spread:$(spread),x_rotation:$(x_rotation),y_rotation:$(y_rotation),dimension:$(dimension)}

$function #lbmanager:team/spawn_changed {team:"$(team)",x:$(x),y:$(y),z:$(z),spread:$(spread),x_rotation:$(x_rotation),y_rotation:$(y_rotation),dimension:$(dimension)}
return 1

#Value validation
$data get storage lbmanager:temp validation $(spread)
$data get storage lbmanager:temp validation $(x)
$data get storage lbmanager:temp validation $(y)
$data get storage lbmanager:temp validation $(z)
$data get storage lbmanager:temp validation $(x_rotation)
$data get storage lbmanager:temp validation $(y_rotation)
$execute in $(dimension) run say j