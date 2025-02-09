scoreboard players operation preteam_player_count lbmanager.main = team_player_count lbmanager.main
data modify storage lbmanager:temp team_search.target set from storage lbmanager:temp team_search.list[0].id

function lbmanager:player/auto_joining/operation with storage lbmanager:temp team_search
execute unless score preteam_player_count lbmanager.main = team_player_count lbmanager.main run data modify storage lbmanager:temp team_search.out set from storage lbmanager:temp team_search.target

data remove storage lbmanager:temp team_search.list[0]
execute if data storage lbmanager:temp team_search.list[0] run function lbmanager:player/auto_joining/teams