$data remove storage lbmanager:main players."$(UUID)"
$data remove storage lbmanager:main teams.$(team).players[{uuid:$(UUID)}]
$scoreboard players remove $(team) lbmanager.teams.player_count 1
$execute if score $(team) lbmanager.teams.has_mc_team matches 1 run team leave @s