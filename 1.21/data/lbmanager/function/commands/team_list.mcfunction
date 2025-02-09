data modify storage lbmanager:temp team_search.target_team set from storage lbmanager:temp team_search.list[0].id

function lbmanager:commands/print_team with storage lbmanager:temp team_search

data remove storage lbmanager:temp team_search.list[0]
execute if data storage lbmanager:temp team_search.list[0] run function lbmanager:commands/team_list