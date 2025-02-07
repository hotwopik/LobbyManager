$execute store success score success lbmanager.main run scoreboard players operation joining lbmanager.main = join_mode.$(mode) lbmanager.main
execute if score success lbmanager.main matches 0 run function lbmanager:commands/exceptions/incorrect_joining
execute if score success lbmanager.main matches 1 run function #lbmanager:settings/team_join_mode_changed