tag @s remove lbmanager.config_status
scoreboard players reset @s lbmanager.player.config_status

data modify storage lbmanager:temp data.uuid set from entity @s UUID
execute if entity @s[tag=lbmanager.config_status.waiting_transfer] run function lbmanager:player/config_status/operation with storage lbmanager:temp data
data remove storage lbmanager:temp data