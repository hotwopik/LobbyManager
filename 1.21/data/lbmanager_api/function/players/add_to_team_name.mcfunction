$execute unless entity $(name) run return run function lbmanager:commands/exceptions/runtime {level:"error",log:"player_not_founded"}

$execute as $(name) run function lbmanager_api:players/add_to_team {team:"$(team)"}