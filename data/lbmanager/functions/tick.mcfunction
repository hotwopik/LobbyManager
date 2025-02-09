scoreboard players set players_now lbmanager.main 0
execute as @a run function lbmanager:player
execute unless score players_reged lbmanager.main = players_now lbmanager.main run function lbmanager:player/leave

execute if score in_game lbmanager.main matches 1 run function #lbmanager:game/game_tick
execute if score in_game lbmanager.main matches 0 run function #lbmanager:game/lobby_tick