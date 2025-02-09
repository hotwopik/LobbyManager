data modify entity @s Owner set from storage lbmanager:temp players_to_remove[0].uuid
execute on origin run function lbmanager_api:players/remove_from_team
data remove storage lbmanager:temp players_to_remove[0]

execute unless data storage lbmanager:temp players_to_remove[0] run kill
execute if data storage lbmanager:temp players_to_remove[0] run function lbmanager:commands/remove_players_from_team