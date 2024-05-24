#First join
execute unless score @s lbmanager.player.leave matches 1 run function lbmanager:player/first_join

#Join
scoreboard players set @s lbmanager.player.leave 0

function #lbmanager:player/join