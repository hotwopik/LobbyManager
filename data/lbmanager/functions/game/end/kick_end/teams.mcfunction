data modify storage lbmanager:temp team_clear.team set from storage lbmanager:temp team_clear.teams[0].team_ids

function lbmanager:game/end/kick_end/team with storage lbmanager:temp team_clear

data remove storage lbmanager:temp team_clear.teams[0]
execute if data storage lbmanager:temp team_clear.teams[0] run function lbmanager:game/end/kick_end/teams