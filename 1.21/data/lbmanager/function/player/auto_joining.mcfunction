execute if score joining lbmanager.main matches 2 if score in_game lbmanager.main matches 1 run return 0

scoreboard players set team_player_count lbmanager.main -1
data modify storage lbmanager:temp team_search.list set from storage lbmanager:main team_ids
execute if data storage lbmanager:temp team_search.list[0] run function lbmanager:player/auto_joining/teams

scoreboard players reset team_player_count lbmanager.main
scoreboard players reset preteam_player_count lbmanager.main

execute if data storage lbmanager:temp team_search.out run function lbmanager:player/auto_joining/join
data remove storage lbmanager:temp team_search