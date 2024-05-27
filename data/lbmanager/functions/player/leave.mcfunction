scoreboard players operation players_reged lbmanager.main = players_now lbmanager.main

execute if score auto_kicking lbmanager.main matches 0 run return 0
data modify storage lbmanager:temp team_search.teams set from storage lbmanager:main team_ids
execute if data storage lbmanager:temp team_search.teams[0] run function lbmanager:player/leave/teams
data remove storage lbmanager:temp team_search