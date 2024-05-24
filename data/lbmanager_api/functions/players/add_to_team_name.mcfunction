scoreboard players set success lbmanager.main 1

$execute unless entity $(name) run function lbmanager:commands/player_not_founded
$execute as $(name) unless entity @s[type=player] run function lbmanager:commands/is_not_player
$execute unless data storage lbmanager:main teams.$(team) run function lbmanager:commands/team_notexist
$execute as $(name) if entity @s[type=player,tag=lbmanager.in_team] run function lbmanager:commands/allready_inteam

execute if score success lbmanager.main matches 0 run return 0

$data modify storage lbmanager:main teams.$(team).players append from entity $(name) UUID
$tag $(name) add lbmanager.in_team