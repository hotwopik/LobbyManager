data modify storage lbmanager:temp team_clear.teams set from storage lbmanager:main team_ids
execute if data storage lbmanager:temp team_clear.teams[0] run function lbmanager:game/end/kick_end/teams
data remove storage lbmanager:temp team_clear

tag @a[tag=lbmanager.in_team] remove lbmanager.in_team

execute if score joining lbmanager.main matches 1..2 as @a run function lbmanager:player/auto_joining