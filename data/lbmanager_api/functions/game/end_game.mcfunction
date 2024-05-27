scoreboard players set success lbmanager.main 1

execute if score in_game lbmanager.main matches 0 run function lbmanager:commands/exceptions/not_in_game

execute if score success lbmanager.main matches 0 run return 0

scoreboard players set in_game lbmanager.main 0

scoreboard players reset @a lbmanager.player.game

execute if data storage lbmanager:main lobby run function lbmanager:game/end/lobby with storage lbmanager:main lobby

execute if score joining lbmanager.main matches 1 as @a[tag=!lbmanager.in_team] run function lbmanager:player/auto_joining

function #lbmanager:game/ended
execute as @a[tag=lbmanager.in_team] run function #lbmanager:player/game/end_playing
execute as @a[tag=!lbmanager.in_team] run function #lbmanager:player/game/end_watching