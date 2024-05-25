$data remove storage lbmanager:main teams."$(target_team)".players[{uuid:$(target_player)}]
$data remove storage lbmanager:main players."$(target_player)"

$scoreboard players remove $(target_team) lbmanager.teams.player_count 1
$function #lbmanager:player/leave {team:$(target_team),uuid:$(target_player)}