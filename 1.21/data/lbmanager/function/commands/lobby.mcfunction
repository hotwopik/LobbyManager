$data modify storage lbmanager:main lobby.after_task set value "$(after_task)"
execute if score lobby_spread lbmanager.main matches 0 run function lbmanager:commands/transfer/tp with storage lbmanager:main lobby
execute if score lobby_spread lbmanager.main matches 1 run function lbmanager:commands/transfer/spread with storage lbmanager:main lobby
data modify storage lbmanager:main lobby.after_task set value ""