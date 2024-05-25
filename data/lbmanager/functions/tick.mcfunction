scoreboard players set players_now lbmanager.main 0
execute as @a at @s run function lbmanager:player
execute if score players_reged lbmanager.main < players_now lbmanager.main run function lbmanager:player/leave