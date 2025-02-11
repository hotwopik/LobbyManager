scoreboard players set success lbmanager.main 1
execute unless data storage lbmanager:main lobby run function lbmanager:commands/exceptions/exception {level:"error",log:"lobby_not_exist"}
execute if score success lbmanager.main matches 0 run return 0

data remove storage lbmanager:main lobby
scoreboard players reset lobby_spread lbmanager.main
function #lbmanager:game/lobby_removed