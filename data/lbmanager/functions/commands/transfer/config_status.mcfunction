tag @s add lbmanager.config_status.waiting_transfer
data modify storage lbmanager:temp data.uuid set from entity @s UUID
$data modify storage lbmanager:temp data.transfer set value {type:"$(type)",transfer:{x:$(x),y:$(y),z:$(z),spread:$(spread),x_rotation:$(x_rotation),y_rotation:$(y_rotation)}}
function lbmanager:commands/transfer/config_status.operation with storage lbmanager:temp data
data remove storage lbmanager:temp data