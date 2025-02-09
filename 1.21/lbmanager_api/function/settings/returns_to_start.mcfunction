$scoreboard players set returns_start lbmanager.main $(mode)
execute unless score auto_kicking lbmanager.main matches 0..1 run function lbmanager:commands/exceptions/incorrect_returns_start
function #lbmanager:settings/returns_to_start_changed