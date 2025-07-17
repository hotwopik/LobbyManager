$execute unless entity $(name) run return run function lbmanager:commands/exceptions/runtime {level:"error",log:"player_not_founded"}

$execute as $(name) run function lbmanager_api:players/set_own_spawn {x:$(x),y:$(y),z:$(z),yaw:$(yaw),pitch:$(pitch),spread:$(spread),dimension:$(dimension)}