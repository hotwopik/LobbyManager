$execute unless data storage lbmanager:main teams."$(team)" run return run function lbmanager:commands/exceptions/exception {level:"error",log:"team_not_exist"}

$data remove storage lbmanager:main teams."$(team)".spawn

$function #lbmanager:team/spawn_removed {team:"$(team)"}