tag @s remove lbmanager.config_status.waiting_transfer

$function lbmanager:player/config_status/transfer with storage lbmanager:main transfers."$(uuid)"
$data remove storage lbmanager:main transfers."$(uuid)"