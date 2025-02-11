execute unless data storage lbmanager:main team_ids[0] run tellraw @s {"storage":"lbmanager:translation","nbt":"list.no_teams","interpret":true}
execute unless data storage lbmanager:main team_ids[0] run return 0

tellraw @s {"storage":"lbmanager:translation","nbt":"list.teams","interpret":true}
data modify storage lbmanager:temp team_search.list set from storage lbmanager:main team_ids
function lbmanager:commands/team_list
data remove storage lbmanager:temp team_search