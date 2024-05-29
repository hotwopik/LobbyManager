scoreboard players set success lbmanager.main 1

$execute unless data storage lbmanager:main teams."$(team)" run function lbmanager:commands/exceptions/team_notexist

$scoreboard players set validation lbmanager.main $(x)
$scoreboard players set validation lbmanager.main $(y)
$scoreboard players set validation lbmanager.main $(z)
$scoreboard players set validation lbmanager.main $(spread)

$execute if score validation lbmanager.main matches 0 run scoreboard players set $(team) lbmanager.teams.spread 0
$execute if score validation lbmanager.main matches 1.. run scoreboard players set $(team) lbmanager.teams.spread 1

execute if score validation lbmanager.main matches ..-1 run function lbmanager:commands/exceptions/incorrect_spread
scoreboard players reset validation lbmanager.main

execute if score success lbmanager.main matches 0 run return 0

$data modify storage lbmanager:main teams."$(team)".spawn set value {x:$(x),y:$(y),z:$(z),spread:$(spread)}

$function #lbmanager:team/spawn_changed {team:"$(team)"}