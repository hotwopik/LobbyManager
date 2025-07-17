scoreboard players set success lbmanager.main 1
$execute unless entity $(name) run function lbmanager:commands/exceptions/runtime {level:"error",log:"player_not_founded"}
execute if score success lbmanager.main matches 0 run return 0

$execute as $(name) run function lbmanager_api:players/set_own_spawn {x:$(x),y:$(y),z:$(z),yaw:$(yaw),pitch:$(pitch),spread:$(spread),dimension:$(dimension)}