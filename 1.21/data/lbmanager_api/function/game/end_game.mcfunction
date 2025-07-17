execute if score in_game lbmanager.main matches 0 run return run function lbmanager:commands/exceptions/runtime {level:"error",log:"game_isnt_started"}

scoreboard players set in_game lbmanager.main 0
scoreboard players reset @a lbmanager.player.game

execute if score reset_own_on_end lbmanager.main matches 1 run data modify storage lbmanager:main own_spawn set value {}

execute if data storage lbmanager:main lobby run function lbmanager:game/end/lobby

function #lbmanager:game/ended
execute as @a[tag=lbmanager.in_team] run function #lbmanager:player/game/end_playing
execute as @a[tag=!lbmanager.in_team] run function #lbmanager:player/game/end_watching

execute if score kick_end lbmanager.main matches 1 run function lbmanager:game/end/kick_end
execute if score kick_end lbmanager.main matches 0 if score joining lbmanager.main matches 1 as @a[tag=!lbmanager.in_team] run function lbmanager:player/auto_joining