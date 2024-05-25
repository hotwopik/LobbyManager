$data modify storage lbmanager:main players."$(UUID)" set value $(team)
$data modify storage lbmanager:main teams.$(team).players append value {uuid:$(UUID)}
$scoreboard players add $(team) lbmanager.teams.player_count 1