scoreboard players set success lbmanager.main 1

$execute unless data storage lbmanager:main teams.$(id) run function lbmanager:teams/team_notexist
execute if score success lbmanager.main matches 0 run return 0

$data modify storage lbmanager:temp players_to_remove set from storage lbmanager:main teams.$(id).players
execute if data storage lbmanager:temp players_to_remove[0] summon snowball run function lbmanager:commands/remove_players_from_team
data remove storage lbmanager:temp players_to_remove

$data remove storage lbmanager:main teams.$(id)
$scoreboard players reset $(id) lbmanager.teams