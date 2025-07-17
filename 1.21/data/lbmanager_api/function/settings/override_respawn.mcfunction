$scoreboard players set respawn_override lbmanager.main $(mode)
execute unless score respawn_override lbmanager.main matches 0..1 run function lbmanager:commands/exceptions/incorrect_boolean {value:"respawn_override"}
function #lbmanager:settings/respawn_override_changed