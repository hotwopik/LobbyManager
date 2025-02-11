$data modify storage lbmanager:temp team_clear.players set from storage lbmanager:main teams."$(team)".players
execute if data storage lbmanager:temp team_clear.players[0] summon snowball run function lbmanager:game/end/kick_end/players

$data modify storage lbmanager:main teams.$(team).players set value []
$scoreboard players set $(team) lbmanager.teams.player_count 0