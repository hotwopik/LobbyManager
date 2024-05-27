$scoreboard players set joining lbmanager.main $(mode)

execute unless score joining lbmanager.main matches 0..2 run function lbmanager:commands/exceptions/incorrect_joining

function #lbmanager:settings/team_join_mode_changed