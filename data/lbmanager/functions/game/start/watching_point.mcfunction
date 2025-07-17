data modify storage lbmanager:main watching_point.after_task set value "function #lbmanager:player/respawn"
execute if score watching_point_spread lbmanager.main matches 0 run function lbmanager:game/start/watching_point/tp with storage lbmanager:main watching_point
execute if score watching_point_spread lbmanager.main matches 1 run function lbmanager:game/start/watching_point/spread with storage lbmanager:main watching_point
data modify storage lbmanager:main watching_point.after_task set value ""