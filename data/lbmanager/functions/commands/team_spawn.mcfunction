$execute unless data storage lbmanager:main teams."$(team)".spawn run return 0

$execute if score $(team) lbmanager.lbmanager.teams.spread matches 0 run function lbmanager:commands/transfer/tp with storage lbmanager:main teams.$(team).spawn
$execute if score $(team) lbmanager.lbmanager.teams.spread matches 1 run function lbmanager:commands/transfer/spread with storage lbmanager:main teams.$(team).spawn