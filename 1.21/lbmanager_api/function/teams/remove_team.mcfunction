$execute unless data storage lbmanager:main teams."$(team)" run return run function lbmanager:commands/exceptions/team_notexist

$data modify storage lbmanager:temp players_to_remove set from storage lbmanager:main teams."$(team)".players
execute if data storage lbmanager:temp players_to_remove[0] summon snowball run function lbmanager:commands/remove_players_from_team
data remove storage lbmanager:temp players_to_remove

$data remove storage lbmanager:main teams."$(team)"
$data remove storage lbmanager:main team_ids[{id:"$(team)"}]

$scoreboard players reset $(team) lbmanager.teams.player_count
$scoreboard players reset $(team) lbmanager.teams.max_count
$scoreboard players reset $(team) lbmanager.teams.spread
$scoreboard players reset $(team) lbmanager.teams.has_mc_team

$function #lbmanager:team/removed {team:"$(team)"}