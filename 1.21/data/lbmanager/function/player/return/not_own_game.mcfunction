scoreboard players operation @s lbmanager.player.game = game_id lbmanager.main
function lbmanager:player/kick

execute if data storage lbmanager:main watching_point run function lbmanager:commands/watching_point

function #lbmanager:player/return/return_after_game