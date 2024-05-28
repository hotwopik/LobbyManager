$data modify storage lbmanager:main players."$(UUID)" set value "$(team)"
$data modify storage lbmanager:main teams."$(team)".players append value {uuid:$(UUID)}
$scoreboard players add $(team) lbmanager.teams.player_count 1

$data modify storage lbmanager:temp data.mc_team set from storage lbmanager:main teams."$(team)".mc_team
$execute if score $(team) lbmanager.teams.has_mc_team matches 1 run function lbmanager:commands/mc_team with storage lbmanager:temp data

$execute if score in_game lbmanager.main matches 1 if data storage lbmanager:main teams."$(team)".spawn run function lbmanager:commands/transfer with storage lbmanager:main teams."$(team)".spawn