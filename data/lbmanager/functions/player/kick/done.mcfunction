tag @s remove lbmanager.in_team
$execute if score $(team) lbmanager.teams.has_mc_team matches 1 run team leave @s
$data remove storage lbmanager:main players."$(UUID)"