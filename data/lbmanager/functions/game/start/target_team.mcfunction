$execute unless data storage lbmanager:main teams.$(target_team).spawn run return 0

$data modify storage lbmanager:temp team_search.spawn set from storage lbmanager:main teams.$(target_team).spawn
$data modify storage lbmanager:temp team_search.players set from storage lbmanager:main teams.$(target_team).players

execute if data storage lbmanager:temp team_search.players[0] summon snowball run function lbmanager:game/start/players
function lbmanager:game/start/spread with storage lbmanager:temp team_search.spawn
tag @a[tag=lbmanager.spreaded] remove lbmanager.spreaded