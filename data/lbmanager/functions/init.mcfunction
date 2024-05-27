scoreboard players set init lbmanager.main 1

#Player
scoreboard objectives add lbmanager.player.leave custom:leave_game
scoreboard objectives add lbmanager.player.game dummy
#Teams
scoreboard objectives add lbmanager.teams.player_count dummy
scoreboard objectives add lbmanager.teams.max_count dummy
#Data
data merge storage lbmanager:main {team_ids:[],teams:{},players:{}}
#Default values
scoreboard players set joining lbmanager.main 0
scoreboard players set auto_kicking lbmanager.main 1

function #lbmanager:after_init