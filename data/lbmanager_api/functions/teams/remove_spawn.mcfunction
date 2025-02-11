scoreboard players set success lbmanager.main 1
$execute unless data storage lbmanager:main teams."$(team)" run function lbmanager:commands/exceptions/exception {level:"error",log:"team_not_exist"}
execute if score success lbmanager.main matches 0 run return 0

$data remove storage lbmanager:main teams."$(team)".spawn

$function #lbmanager:team/spawn_removed {team:"$(team)"}