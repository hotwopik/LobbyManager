scoreboard players set success lbmanager.main 1

$execute unless data storage lbmanager:main teams."$(team)" run function lbmanager:teams/exceptions/team_notexist

$scoreboard players set validation lbmanager.main $(x)
$scoreboard players set validation lbmanager.main $(y)
$scoreboard players set validation lbmanager.main $(z)
$scoreboard players set validation lbmanager.main $(spread)
execute if score validation lbmanager.main matches ..-1 run function lbmanager:commands/exceptions/incorrect_spread

execute if score success lbmanager.main matches 0 run return 0

$data modify storage lbmanager:main teams.$(team).spawn set value {x:$(x),y:$(y),z:$(z),spread:$(spread)}