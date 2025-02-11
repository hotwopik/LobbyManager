scoreboard players set success lbmanager.main 1
$execute unless data storage lbmanager:main teams."$(team)" run function lbmanager:commands/exceptions/exception {level:"error",log:"team_not_exist"}
execute if score success lbmanager.main matches 0 run return 0

$data modify storage lbmanager:main teams."$(team)".mc_team set value ""
$scoreboard players set $(team) lbmanager.teams.has_mc_team 0