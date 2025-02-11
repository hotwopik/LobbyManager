scoreboard players set success lbmanager.main 1
$execute unless data storage lbmanager:main teams."$(team)" run function lbmanager:commands/exceptions/exception {level:"error",log:"team_not_exist"}
execute if score success lbmanager.main matches 0 run return 0

$function lbmanager:commands/get_team {team:$(team)}