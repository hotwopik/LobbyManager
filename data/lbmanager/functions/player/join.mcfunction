#First join
execute unless score @s lbmanager.player.leave matches 1 run function lbmanager:player/first_join

#Join
scoreboard players set @s lbmanager.player.leave 0

execute if score auto_kicking lbmanager.main matches 1 run tag @s remove lbmanager.in_team
scoreboard players add players_reged lbmanager.main 1

execute if score joining lbmanager.main matches 1..2 run function lbmanager:player/auto_joining

function #lbmanager:player/join