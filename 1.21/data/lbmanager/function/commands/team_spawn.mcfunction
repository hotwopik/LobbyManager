$execute unless data storage lbmanager:main teams."$(team)".spawn run return 0
$data modify storage lbmanager:main teams."$(team)".spawn.after_task set value "$(after_task)"

$execute if score $(team) lbmanager.teams.spread matches 0 run function lbmanager:commands/transfer/tp with storage lbmanager:main teams.$(team).spawn
$execute if score $(team) lbmanager.teams.spread matches 1 run function lbmanager:commands/transfer/spread with storage lbmanager:main teams.$(team).spawn

$data modify storage lbmanager:main teams."$(team)".spawn.after_task set value ""