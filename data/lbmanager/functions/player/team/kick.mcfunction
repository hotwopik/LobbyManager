tag @s remove lbmanager.in_team
$tag @s remove lbmanager.team.$(team)
$execute if score $(team) lbmanager.teams.has_mc_team matches 1 run team leave @s
$data remove storage lbmanager:main players."$(UUID)"

execute if score in_game lbmanager.main matches 1 if data storage lbmanager:main watching_point run function lbmanager:commands/watching_point {after_task:""}