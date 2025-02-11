$scoreboard players set kick_end lbmanager.main $(mode)
execute unless score kick_end lbmanager.main matches 0..1 run function lbmanager:commands/exceptions/incorrect_boolean {field:"mode",value:"kick_end"}
function #lbmanager:settings/kick_after_end_changed