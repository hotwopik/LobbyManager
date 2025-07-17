$execute store result score spread lbmanager.main run data get storage lbmanager:main own_spawn."$(UUID)".spread

$data modify storage lbmanager:main own_spawn."$(UUID)".after_task set from storage lbmanager:temp data.after_task
$execute if score spread lbmanager.main matches 0 run function lbmanager:commands/transfer/tp with storage lbmanager:main own_spawn."$(UUID)"
$execute if score spread lbmanager.main matches 1.. run function lbmanager:commands/transfer/spread with storage lbmanager:main own_spawn."$(UUID)"
$data modify storage lbmanager:main own_spawn."$(UUID)".after_task set value ""

return 1