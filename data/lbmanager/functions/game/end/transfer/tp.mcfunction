$execute as @a[tag=lbmanager.config_status] run function lbmanager:commands/transfer/config_status {type:"tp",x:$(x),y:$(y),z:$(z),spread:0,yaw:$(yaw),pitch:$(pitch),dimension:$(dimension)}

$execute in $(dimension) run tp @a[tag=!lbmanager.config_status] $(x) $(y) $(z) $(yaw) $(pitch)