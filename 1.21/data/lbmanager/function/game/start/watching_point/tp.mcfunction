$execute as @a[tag=lbmanager.config_status,tag=!lbmanager.in_team] run function lbmanager:commands/transfer/config_status {type:"tp",x:$(x),y:$(y),z:$(z),spread:0,yaw:$(yaw),pitch:$(pitch),dimension:$(dimension),after_task:"$(after_task)"}

$execute in $(dimension) run tp @a[tag=!lbmanager.in_team,tag=!lbmanager.config_status] $(x) $(y) $(z) $(yaw) $(pitch)
$execute as @a[tag=!lbmanager.in_team,tag=!lbmanager.config_status] at @s run function lbmanager:commands/transfer/tp.after_task {after_task:"$(after_task)"}