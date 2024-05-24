scoreboard players set success lbmanager.main 1

$execute unless data storage lbmanager:main teams.$(id) run function lbmanager:teams/team_notexist
execute if score success lbmanager.main matches 0 run return 0

$data remove storage lbmanager:main teams.$(id)