$execute if entity @s[tag=lbmanager.config_status] run return run function lbmanager:commands/transfer/config_status {type:"tp",spread:0,x:$(x),y:$(y),z:$(z),yaw:$(yaw),pitch:$(pitch),dimension:$(dimension),after_task:"$(after_task)"}
$execute in $(dimension) run tp @s $(x) $(y) $(z) $(yaw) $(pitch)
$execute at @s run function lbmanager:commands/transfer/tp.after_task {after_task:"$(after_task)"}
return 1