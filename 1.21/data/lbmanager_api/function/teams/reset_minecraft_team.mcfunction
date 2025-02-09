$execute unless data storage lbmanager:main teams."$(team)" run return run function lbmanager:commands/exceptions/team_notexist

$data modify storage lbmanager:main teams."$(team)".mc_team set value ""
$scoreboard players set $(team) lbmanager.teams.has_mc_team 0