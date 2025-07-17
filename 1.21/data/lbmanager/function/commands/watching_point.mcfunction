$data modify storage lbmanager:main watching_point.after_task set value "$(after_task)"
execute if score watching_point_spread lbmanager.main matches 0 run function lbmanager:commands/transfer/tp with storage lbmanager:main watching_point
execute if score watching_point_spread lbmanager.main matches 1 run function lbmanager:commands/transfer/spread with storage lbmanager:main watching_point
data modify storage lbmanager:main watching_point.after_task set value ""