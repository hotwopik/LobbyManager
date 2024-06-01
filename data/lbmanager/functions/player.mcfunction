#Join
execute unless score @s lbmanager.player.leave matches 0 run function lbmanager:player/join
#Player count
scoreboard players add players_now lbmanager.main 1
#Config status
execute if entity @s[tag=lbmanager.config_status] run function lbmanager:player/config_status