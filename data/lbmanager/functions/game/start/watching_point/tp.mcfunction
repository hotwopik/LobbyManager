$execute as @a[tag=lbmanager.config_status,tag=!lbmanager.in_team] run function lbmanager:commands/transfer/config_status {type:"tp",x:$(x),y:$(y),z:$(z),spread:0,x_rotation:$(x_rotation),y_rotation:$(y_rotation)}

$tp @a[tag=!lbmanager.in_team,tag=!lbmanager.config_status] $(x) $(y) $(z) $(x_rotation) $(y_rotation)