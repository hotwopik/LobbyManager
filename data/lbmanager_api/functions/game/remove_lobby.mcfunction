scoreboard players set success lbmanager.main 1

execute unless data storage lbmanager:main lobby run function lbmanager:commands/exceptions/there_is_no_lobby

execute if score success lbmanager.main matches 0 run return 0

data remove storage lbmanager:main lobby
function #lbmanager:game/lobby_removed