$scoreboard players set auto_kicking lbmanager.main $(mode)
execute unless score auto_kicking lbmanager.main matches 0..1 run function lbmanager:commands/exceptions/incorrect_boolean {value:"auto_kicking"}
function #lbmanager:settings/kick_on_leave_changed