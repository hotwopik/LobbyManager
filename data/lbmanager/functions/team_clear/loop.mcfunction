data modify storage lbmanager:temp team_clear.team set from storage lbmanager:temp team_clear.teams[0].id

function lbmanager:team_clear/operation with storage lbmanager:temp team_clear

data remove storage lbmanager:temp team_clear.teams[0]
execute if data storage lbmanager:temp team_clear.teams[0] run function lbmanager:team_clear/loop