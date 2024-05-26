#scoreboard players set init lbmanager.main 1

#Player
scoreboard objectives add lbmanager.player.leave custom:leave_game
#Teams
scoreboard objectives add lbmanager.teams.player_count dummy
scoreboard objectives add lbmanager.teams.max_count dummy
#Data
data merge storage lbmanager:main {team_ids:[],teams:{},players:{}}

function #lbmanager:after_init