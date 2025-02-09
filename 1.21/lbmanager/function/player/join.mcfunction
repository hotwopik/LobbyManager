#Config status
tag @s add lbmanager.config_status
scoreboard players set @s lbmanager.player.config_status 5
#First join
execute unless score @s lbmanager.player.leave matches 1 run function lbmanager:player/first_join

#Join
scoreboard players set @s lbmanager.player.leave 0

execute if entity @s[tag=lbmanager.in_team] run function lbmanager:player/check_team
execute if score @s lbmanager.player.game matches 1.. run function lbmanager:player/return

scoreboard players add players_reged lbmanager.main 1

execute if score joining lbmanager.main matches 1..2 unless entity @s[tag=lbmanager.in_team] run function lbmanager:player/auto_joining

function #lbmanager:player/join