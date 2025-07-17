execute if entity @s[tag=!lbmanager.in_team] run function #lbmanager:player/return/watcher_returned
execute if entity @s[tag=lbmanager.in_team] run function #lbmanager:player/return/player_returned

execute if score returns_start lbmanager.main matches 0 run return 1
execute if entity @s[tag=!lbmanager.in_team] if data storage lbmanager:main watching_point run function lbmanager:commands/watching_point {after_task:"function #lbmanager:player/respawn"}
execute if entity @s[tag=lbmanager.in_team] run function lbmanager:player/return/player