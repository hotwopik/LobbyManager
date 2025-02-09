data modify storage lbmanager:temp team_search.target_team set from storage lbmanager:temp team_search.teams[0].id

function lbmanager:game/start/target_team with storage lbmanager:temp team_search

data remove storage lbmanager:temp team_search.teams[0]
execute if data storage lbmanager:temp team_search.teams[0] run function lbmanager:game/start/teams