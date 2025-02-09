$data modify storage lbmanager:main teams."$(id)".players set value []
$scoreboard players set $(id) lbmanager.teams.player_count 0
$data modify storage lbmanager:main team_ids append value {id:"$(id)"}
scoreboard players set team_creation lbmanager.main 1