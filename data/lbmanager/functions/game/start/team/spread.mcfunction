$execute as @a[tag=lbmanager.config_status,tag=lbmanager.spreaded] run function lbmanager:commands/transfer/config_status {type:"spread",x:$(x),y:$(y),z:$(z),spread:$(spread),yaw:$(yaw),pitch:$(pitch),dimension:$(dimension)}

$execute in $(dimension) run spreadplayers $(x) $(z) 0 $(spread) under $(y) false @a[tag=lbmanager.spreaded,tag=!lbmanager.config_status]
$execute as @a[tag=lbmanager.spreaded,tag=!lbmanager.config_status] at @s run tp @s ~ ~ ~ $(yaw) $(pitch)