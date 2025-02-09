scoreboard players set team_creation lbmanager.main 0
$execute unless data storage lbmanager:main teams."$(team)" run function lbmanager:commands/create_team {id:$(team)}
$data modify storage lbmanager:main teams."$(team)" set value {name:'$(name)',mc_team:'$(mc_team)'}

$scoreboard players set $(team) lbmanager.teams.max_count $(max_count)
$execute if score $(team) lbmanager.teams.max_count matches ..-2 run scoreboard players set $(team) lbmanager.teams.max_count -1

$data modify storage lbmanager:temp mc_team_check set value '$(mc_team)'
$execute store success score $(team) lbmanager.teams.has_mc_team run data modify storage lbmanager:temp mc_team_check set value ""
data remove storage lbmanager:temp mc_team_check

$execute if score team_creation lbmanager.main matches 0 run function #lbmanager:team/modified {team:"$(team)",name:'$(name)',mc_team:$(mc_team),max_count:$(max_count)}
$execute if score team_creation lbmanager.main matches 1 run function #lbmanager:team/created {team:"$(team)",name:'$(name)',mc_team:$(mc_team),max_count:$(max_count)}
scoreboard players reset team_creation lbmanager.main