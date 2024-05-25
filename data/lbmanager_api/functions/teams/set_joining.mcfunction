$scoreboard players set joining lbmanager.main $(mode)

scoreboard players set success lbmanager.main 1
execute unless score joining lbmanager.main matches 0..2 run function lbmanager:teams/exceptions/incorrect_joining
execute if score success lbmanager.main matches 0 run return 0