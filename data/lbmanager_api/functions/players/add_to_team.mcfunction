scoreboard players set success lbmanager.main 1
execute unless entity @s[type=player] run function lbmanager:commands/exceptions/exception {level:"error",log:"is_not_player"}
$execute unless data storage lbmanager:main teams."$(team)" run function lbmanager:commands/exceptions/exception {level:"error",log:"team_not_exist"}
execute if entity @s[type=player,tag=lbmanager.in_team] run function lbmanager:commands/exceptions/runtime {level:"error",log:"player_allready_in_team"}
execute if score success lbmanager.main matches 0 run return 0

data modify storage lbmanager:temp data.UUID set from entity @s UUID
$data modify storage lbmanager:temp data.team set value "$(team)"
function lbmanager:commands/add_player_data with storage lbmanager:temp data
data remove storage lbmanager:temp data

tag @s add lbmanager.in_team
$tag @s add lbmanager.team.$(team)
$function #lbmanager:player/team/join_team {team:$(team)}