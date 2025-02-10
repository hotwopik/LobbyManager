scoreboard players set success lbmanager.main 1
$execute unless data storage lbmanager:main teams."$(team)" run function lbmanager:commands/exceptions/team_notexist
execute if score success lbmanager.main matches 0 run return 0

execute if score in_game lbmanager.main matches 0 if data storage lbmanager:main lobby run function lbmanager:commands/lobby
execute if score in_game lbmanager.main matches 0 run return 1

$function lbmanager:game/start/target_team {"target_team":$(team)}