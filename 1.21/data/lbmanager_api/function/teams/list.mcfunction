execute unless data storage lbmanager:main team_ids[0] run return run tellraw @s {"text":"There is no teams"}

tellraw @s {"text":"Teams:"}
data modify storage lbmanager:temp team_search.list set from storage lbmanager:main team_ids
function lbmanager:commands/team_list
data remove storage lbmanager:temp team_search