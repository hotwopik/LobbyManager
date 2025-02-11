scoreboard players set success lbmanager.main 1
execute if score in_game lbmanager.main matches 1 run function lbmanager:commands/exceptions/runtime {level:"error",log:"game_allready_started"}
execute if score success lbmanager.main matches 0 run return 0

scoreboard players set in_game lbmanager.main 1
scoreboard players add game_id lbmanager.main 1

scoreboard players operation @a lbmanager.player.game = game_id lbmanager.main

data modify storage lbmanager:temp team_search.teams set from storage lbmanager:main team_ids
execute if data storage lbmanager:temp team_search.teams[0] run function lbmanager:game/start/teams
data remove storage lbmanager:temp team_search

execute if data storage lbmanager:main watching_point run function lbmanager:game/start/watching_point with storage lbmanager:main watching_point

function #lbmanager:game/started
execute as @a[tag=lbmanager.in_team] at @s run function #lbmanager:player/game/start_playing
execute as @a[tag=!lbmanager.in_team] at @s run function #lbmanager:player/game/start_watching