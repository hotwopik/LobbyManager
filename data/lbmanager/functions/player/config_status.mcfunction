scoreboard players remove @s lbmanager.player.config_status 1
execute if score @s lbmanager.player.config_status matches 0 run function lbmanager:player/config_status/end