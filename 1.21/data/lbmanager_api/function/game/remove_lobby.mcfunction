execute unless data storage lbmanager:main lobby run return run function lbmanager:commands/exceptions/exception {level:"error",log:"lobby_not_exist"}

data remove storage lbmanager:main lobby
scoreboard players reset lobby_spread lbmanager.main
function #lbmanager:game/lobby_removed