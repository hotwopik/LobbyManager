$execute if data storage lbmanager:main own_spawn."$(UUID)" run function lbmanager:commands/own_spawn with storage lbmanager:temp data
$execute if data storage lbmanager:main own_spawn."$(UUID)" run return 1
return 0