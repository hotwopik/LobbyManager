$scoreboard players set reset_own_on_end lbmanager.main $(mode)
execute unless score reset_own_on_end lbmanager.main matches 0..1 run function lbmanager:commands/exceptions/incorrect_boolean {value:"reset_own_on_end"}
function #lbmanager:settings/reset_own_spawn_on_end_changed