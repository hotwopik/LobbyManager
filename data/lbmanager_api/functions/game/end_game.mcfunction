scoreboard players set ingame lbmanager.main 0

execute if data storage lbmanager:main lobby run function lbmanager:game/end/lobby with storage lbmanager:main lobby

execute if score joining lbmanager.main matches 1 as @a[tag=!lbmanager.in_team] run function lbmanager:player/auto_joining

function #lbmanager:game/ended