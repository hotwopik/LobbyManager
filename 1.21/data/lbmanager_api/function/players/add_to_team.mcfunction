execute unless entity @s[type=player] run return run function lbmanager:commands/exceptions/is_not_player
$execute unless data storage lbmanager:main teams."$(team)" run return run function lbmanager:commands/exceptions/team_notexist
execute if entity @s[tag=lbmanager.in_team] run return run function lbmanager:commands/exceptions/allready_inteam

data modify storage lbmanager:temp data.UUID set from entity @s UUID
$data modify storage lbmanager:temp data.team set value "$(team)"
function lbmanager:commands/add_player_data with storage lbmanager:temp data
data remove storage lbmanager:temp data

tag @s add lbmanager.in_team
$tag @s add lbmanager.team.$(team)
$function #lbmanager:player/team/join_team {team:$(team)}