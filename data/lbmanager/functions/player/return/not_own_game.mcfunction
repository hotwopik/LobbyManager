scoreboard players operation @s lbmanager.player.game = game_id lbmanager.main
tag @s remove lbmanager.in_team
team leave @s

execute if data storage lbmanager:main watching_point run function lbmanager:commands/watching_point

function #lbmanager:player/return/return_after_game