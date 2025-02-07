scoreboard players set success lbmanager.main 1

execute if score in_game lbmanager.main matches 0 run function lbmanager:commands/exceptions/not_in_game
execute if score success lbmanager.main matches 0 run return 0

data modify storage lbmanager:temp team_search.teams set from storage lbmanager:main team_ids
execute if data storage lbmanager:temp team_search.teams[0] run function lbmanager:game/start/teams
data remove storage lbmanager:temp team_search

execute as @a[tag=lbmanager.in_team] at @s run function #lbmanager:player/respawn