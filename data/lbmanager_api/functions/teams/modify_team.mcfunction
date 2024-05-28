scoreboard players set team_creation lbmanager.main 0
$execute unless data storage lbmanager:main teams."$(id)" run function lbmanager:commands/create_team {id:$(id)}
$data modify storage lbmanager:main teams."$(id)" set value {name:'$(name)',mc_team:'$(mc_team)'}

$scoreboard players set $(id) lbmanager.teams.max_count $(max_count)
$execute if score $(id) lbmanager.teams.max_count matches ..-2 run scoreboard players set $(id) lbmanager.teams.max_count -1

$data modify storage lbmanager:temp mc_team_check set value '$(mc_team)'
$execute store success score $(id) lbmanager.teams.has_mc_team run data modify storage lbmanager:temp mc_team_check set value ""
data remove storage lbmanager:temp mc_team_check

$execute if score team_creation lbmanager.main matches 0 run function #lbmanager:team/modified {team:"$(id)"}
$execute if score team_creation lbmanager.main matches 1 run function #lbmanager:team/created {team:"$(id)"}
scoreboard players reset team_creation lbmanager.main