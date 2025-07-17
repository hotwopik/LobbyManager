$execute if entity @s[tag=lbmanager.config_status] run return run function lbmanager:commands/transfer/config_status {type:"spread",x:$(x),y:$(y),z:$(z),spread:$(spread),x_rotation:$(x_rotation),y_rotation:$(y_rotation),dimension:$(dimension)}
$execute in $(dimension) run spreadplayers $(x) $(z) 0 $(spread) under $(y) false @s
$execute at @s run tp @s ~ ~ ~ $(x_rotation) $(y_rotation)
return 1