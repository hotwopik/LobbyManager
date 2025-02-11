scoreboard players set init lbmanager.main 1

#Player
scoreboard objectives add lbmanager.player.leave custom:leave_game
scoreboard objectives add lbmanager.player.respawned custom:time_since_rest
scoreboard objectives add lbmanager.player.game dummy
scoreboard objectives add lbmanager.player.config_status dummy
#Teams
scoreboard objectives add lbmanager.teams.has_mc_team dummy
scoreboard objectives add lbmanager.teams.spread dummy
scoreboard objectives add lbmanager.teams.player_count dummy
scoreboard objectives add lbmanager.teams.max_count dummy
#Data
data merge storage lbmanager:main {team_ids:[],teams:{},players:{},transfers:{}}
#Default values
scoreboard players set joining lbmanager.main 0
scoreboard players set auto_kicking lbmanager.main 1
scoreboard players set returns_start lbmanager.main 1
scoreboard players set kick_end lbmanager.main 0
scoreboard players set in_game lbmanager.main 0
scoreboard players set game_id lbmanager.main 0

scoreboard players set join_mode.none lbmanager.main 0
scoreboard players set join_mode.allways lbmanager.main 1
scoreboard players set join_mode.inlobby lbmanager.main 2

#Translations
data merge storage lbmanager:translation {\
    error:'{"text":"[ERROR] ",color:red}',\
    warn:'{"text":"[WARN] ",color:yellow}',\
    exception:{\
        incorrect_boolean:"Field mode must be 0 or 1. Changed to 0",\
        incorrect_join_mode:"Field mode must be none, inlobby or allways. Changed to none",\
        incorrect_spread:"Spread must be a positive",\
        is_not_player:"Entity isn't player",\
        minecraft_team_not_exist:"Given Minecraft team is not exist",\
        team_not_exist:"Given team not exist",\
        lobby_not_exist:"Lobby does not exist",\
        watching_point_not_exist:"Watching point does not exist",\
    },\
    runtime:{\
        game_allready_started:"Game allready started",\
        game_isnt_started:"Game isn't started",\
        player_not_founded:"Player not founded",\
        player_not_in_team:"Player not in team",\
        player_allready_in_team:"Player allready in team",\
    },\
    list:{\
        no_teams:"There is no teams",\
        teams:"Teams:",\
        display_name:"Display name: ",\
        minecraft_team:"Minecraft team: ",\
        max_count:"Max count: ",\
        player_count:"Player count: "\
    }\
}

function #lbmanager:after_init