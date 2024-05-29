$execute unless data storage lbmanager:main teams.$(target_team).spawn run return 0

$data modify storage lbmanager:temp team_search.players set from storage lbmanager:main teams."$(target_team)".players

execute if data storage lbmanager:temp team_search.players[0] summon snowball run function lbmanager:game/start/players
$execute if score $(target_team) lbmanager.teams.spread matches 1 run function lbmanager:game/start/team/spread with storage lbmanager:main teams."$(target_team)".spawn
$execute if score $(target_team) lbmanager.teams.spread matches 0 run function lbmanager:game/start/team/tp with storage lbmanager:main teams."$(target_team)".spawn
tag @a[tag=lbmanager.spreaded] remove lbmanager.spreaded