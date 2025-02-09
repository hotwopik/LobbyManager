data modify storage lbmanager:temp team_clear.player set from storage lbmanager:temp team_clear.players[0].uuid
data modify entity @s Owner set from storage lbmanager:temp team_clear.player

execute on origin run function lbmanager:game/end/kick_end/player with storage lbmanager:temp team_clear

data remove storage lbmanager:temp team_clear.players[0]
execute unless data storage lbmanager:temp team_clear.players[0] run kill
execute if data storage lbmanager:temp team_clear.players[0] run function lbmanager:game/end/kick_end/players