data modify storage lbmanager:temp team_clear.teams set from storage lbmanger:main team_ids
execute if data storage lbmanager:temp team_clear.teams[0] run function lbmanager:team_clear/loop
data remove storage lbmanager:temp team_clear

data modify storage lbmanager:main players set value {}
scoreboard players set * lbmanager.teams.player_count 0