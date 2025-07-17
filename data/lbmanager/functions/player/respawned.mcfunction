tag @s add lbmanager.config_status
scoreboard players set @s lbmanager.player.config_status 5

execute if score respawn_override lbmanager.main matches 1 run function lbmanager_api:players/respawn
execute if score respawn_override lbmanager.main matches 0 run function #lbmanager:player/respawn