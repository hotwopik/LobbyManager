data modify entity @s Owner set from storage lbmanager:temp team_search.players[0].uuid

execute on origin run tag @s add lbmanager.spreaded

data remove storage lbmanager:temp team_search.players[0]
execute unless data storage lbmanager:temp team_search.players[0] run kill @s
execute if data storage lbmanager:temp team_search.players[0] run function lbmanager:game/start/players