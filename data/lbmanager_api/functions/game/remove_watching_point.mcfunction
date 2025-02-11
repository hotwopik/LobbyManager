scoreboard players set success lbmanager.main 1
execute unless data storage lbmanager:main watching_point run function lbmanager:commands/exceptions/exception {level:"error",log:"watching_point_not_exist"}
execute if score success lbmanager.main matches 0 run return 0

data remove storage lbmanager:main watching_point
scoreboard players reset watching_point_spread lbmanager.main
function #lbmanager:game/watching_point_removed