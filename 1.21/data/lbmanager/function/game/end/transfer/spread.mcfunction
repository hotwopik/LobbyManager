$execute as @a[tag=lbmanager.config_status] run function lbmanager:commands/transfer/config_status {type:"spread",x:$(x),y:$(y),z:$(z),spread:$(spread),yaw:$(yaw),pitch:$(pitch),dimension:$(dimension),after_task:"$(after_task)"}

$execute in $(dimension) run spreadplayers $(x) $(z) 0 $(spread) under $(y) false @a[tag=!lbmanager.config_status]
$execute as @a[tag=!lbmanager.config_status] at @s run function lbmanager:commands/transfer/spread.after_task {yaw:$(yaw),pitch:$(pitch),after_task:"$(after_task)"}