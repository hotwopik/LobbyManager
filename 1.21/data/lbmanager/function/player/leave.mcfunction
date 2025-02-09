scoreboard players operation players_reged lbmanager.main = players_now lbmanager.main

data modify storage lbmanager:temp team_search.teams set from storage lbmanager:main team_ids
execute if data storage lbmanager:temp team_search.teams[0] run function lbmanager:player/leave/teams
data remove storage lbmanager:temp team_search
scoreboard players reset player_exist lbmanager.main