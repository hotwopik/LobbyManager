execute if score in_game lbmanager.main matches 0 run return run function lbmanager:commands/exceptions/not_in_game

data modify storage lbmanager:temp team_search.teams set from storage lbmanager:main team_ids
execute if data storage lbmanager:temp team_search.teams[0] run function lbmanager:game/start/teams
data remove storage lbmanager:temp team_search