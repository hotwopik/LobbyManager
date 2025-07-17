scoreboard players reset @s lbmanager.player.game
execute if data storage lbmanager:main lobby run function lbmanager:commands/lobby {after_task:"function #lbmanager:player/return/return_after_game"}