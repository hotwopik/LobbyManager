scoreboard objectives add lbmanager.main dummy
execute unless score init lbmanager.main matches 1 run function lbmanager:init
execute unless entity @p if score auto_kicking lbmanager.main matches 1 run function lbmanager:commands/team_clear

function #lbmanager:after_load