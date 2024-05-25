scoreboard objectives add lbmanager.main dummy
execute unless score init lbmanager.main matches 1 run function lbmanager:init

function #lbmanager:after_load