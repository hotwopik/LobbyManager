scoreboard players set ingame lbmanager.main 1

data modify storage lbmanager:temp team_search.teams set from storage lbmanager:main team_ids
execute if data storage lbmanager:temp team_search.teams[0] run function lbmanager:game/start/teams
data remove storage lbmanager:temp team_search

execute if data storage lbmanager:main watching_point run function lbmanager:game/start/watching_point with storage lbmanager:main watching_point

function #lbmanager:game/started