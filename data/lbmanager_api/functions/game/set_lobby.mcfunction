scoreboard players set success lbmanager.main 1

$scoreboard players set validation lbmanager.main $(x)
$scoreboard players set validation lbmanager.main $(y)
$scoreboard players set validation lbmanager.main $(z)
$scoreboard players set validation lbmanager.main $(spread)

execute if score validation lbmanager.main matches 0 run scoreboard players set lobby_spread lbmanager.main 0
execute if score validation lbmanager.main matches 1.. run scoreboard players set lobby_spread lbmanager.main 1

execute if score validation lbmanager.main matches ..-1 run function lbmanager:commands/exceptions/incorrect_spread
scoreboard players reset validation lbmanager.main

execute if score success lbmanager.main matches 0 run return 0

$data modify storage lbmanager:main lobby set value {x:$(x),y:$(y),z:$(z),spread:$(spread)}
function #lbmanager:game/lobby_changed