scoreboard players set success lbmanager.main 1
$execute unless entity $(name) run function lbmanager:commands/exceptions/runtime {level:"error",log:"player_not_founded"}
execute if score success lbmanager.main matches 0 run return 0

$execute as $(name) run function lbmanager_api:players/reset_own_spawn