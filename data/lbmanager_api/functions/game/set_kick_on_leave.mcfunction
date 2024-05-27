$scoreboard players set auto_kicking lbmanager.main $(mode)

execute unless score auto_kicking lbmanager.main matches 0..1 run function lbmanager:commands/exceptions/incorrect_auto_kicking

function #lbmanager:game/kick_on_leave_changed