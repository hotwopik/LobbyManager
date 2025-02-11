$scoreboard players set returns_start lbmanager.main $(mode)
execute unless score returns_start lbmanager.main matches 0..1 run function lbmanager:commands/exceptions/incorrect_boolean {field:"mode",value:"returns_start"}
function #lbmanager:settings/returns_to_start_changed