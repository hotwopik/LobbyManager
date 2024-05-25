#Join
execute unless score @s lbmanager.player.leave matches 0 run function lbmanager:player/join
#Player count
scoreboard players add players_now lbmanager.main 1