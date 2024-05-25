$execute unless data storage lbmanager:main teams."$(id)" run function lnmanager:commands/create_team {id:$(id)}
$data modify storage lbmanager:main teams."$(id)" set value {name:"$(name)",mc_team:"$(mc_team)"}

$scoreboard players set $(id) lbmanager.teams.max_count $(maxcount)
$execute if score $(id) lbmanager.teams.max_count matches ..-2 run scoreboard players set $(id) lbmanager.teams.max_count -1