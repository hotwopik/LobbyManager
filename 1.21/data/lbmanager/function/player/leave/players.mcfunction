data modify entity @s Owner set from storage lbmanager:temp team_search.players[0].uuid
data modify storage lbmanager:temp team_search.target_player set from storage lbmanager:temp team_search.players[0].uuid

scoreboard players set player_exist lbmanager.main 0
execute on origin run scoreboard players set player_exist lbmanager.main 1

execute if score player_exist lbmanager.main matches 0 run function lbmanager:player/leave/leaved_player with storage lbmanager:temp team_search

data remove storage lbmanager:temp team_search.players[0]
execute unless data storage lbmanager:temp team_search.players[0] run kill @s
execute if data storage lbmanager:temp team_search.players[0] run function lbmanager:player/leave/players