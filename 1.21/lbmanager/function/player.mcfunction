#Events
execute unless score @s lbmanager.player.leave matches 0 run function lbmanager:player/join
execute if score @s lbmanager.player.respawned matches 0 run function lbmanager:player/respawned
#Player count
scoreboard players add players_now lbmanager.main 1
#Config status
execute if entity @s[tag=lbmanager.config_status] run function lbmanager:player/config_status