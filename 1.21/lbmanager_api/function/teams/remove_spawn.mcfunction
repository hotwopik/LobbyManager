$execute unless data storage lbmanager:main teams."$(team)" run return run function lbmanager:commands/exceptions/team_notexist

$data remove storage lbmanager:main teams."$(team)".spawn
$function #lbmanager:team/spawn_removed {team:"$(team)"}