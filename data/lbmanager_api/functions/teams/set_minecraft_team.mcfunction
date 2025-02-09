$execute unless data storage lbmanager:main teams."$(team)" run function lbmanager:commands/exceptions/team_notexist
execute if score success lbmanager.main matches 0 run return 0

$execute store success score success lbmanager.main run team list $(minecraft_team)
execute if score success lbmanager.main matches 0 run function lbmanager:commands/exceptions/minecraft_team_not_exist
execute if score success lbmanager.main matches 0 run return 0

$data modify storage lbmanager:main teams."$(team)".mc_team set value "$(minecraft_team)"
$scoreboard players set $(team) lbmanager.teams.has_mc_team 1