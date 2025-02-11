execute unless data storage lbmanager:main watching_point run return run function lbmanager:commands/exceptions/exception {level:"error",log:"watching_point_not_exist"}

data remove storage lbmanager:main watching_point
scoreboard players reset watching_point_spread lbmanager.main
function #lbmanager:game/watching_point_removed