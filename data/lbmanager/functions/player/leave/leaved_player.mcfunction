$data remove storage lbmanager:main teams."$(target_team)".players[{uuid:$(target_player)}]
$data remove storage lbmanager:main players."$(target_player)"

$scoreboard players remove $(target_team) lbmanager.teams.player_count 1
$function #lbmanager:player/kicked_from_team{team:$(target_team),uuid:$(target_player)}

$execute if score joining lbmanager.main matches 1..2 run function lbmanager:player/leave/replace {team:$(target_team)}