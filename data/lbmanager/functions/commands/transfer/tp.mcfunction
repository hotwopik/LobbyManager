$execute if entity @s[tag=lbmanager.config_status] run function lbmanager:commands/transfer/config_status {type:"tp",spread:0,x:$(x),y:$(y),z:$(z),x_rotation:$(x_rotation),y_rotation:$(y_rotation),dimension:$(dimension)}
execute if entity @s[tag=lbmanager.config_status] run return 0

$execute in $(dimension) run tp @s $(x) $(y) $(z) $(x_rotation) $(y_rotation)