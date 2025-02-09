data modify storage lbmanager:temp team_join.team set from storage lbmanager:temp team_search.out
function lbmanager_api:players/add_to_team with storage lbmanager:temp team_join
data remove storage lbmanager:temp team_join