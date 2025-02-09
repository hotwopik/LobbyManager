scoreboard players set success lbmanager.main 1
$execute unless data storage lbmanager:main teams."$(team)" run function lbmanager:commands/exceptions/team_notexist

$scoreboard players set validation lbmanager.main $(width)
execute if score validation lbmanager.main matches ..0 run function lbmanager:commands/exceptions/value_not_positive {field:"width"}

$scoreboard players set validation lbmanager.main $(height)
execute if score validation lbmanager.main matches ..0 run function lbmanager:commands/exceptions/value_not_positive {field:"height"}

execute if score success lbmanager.main matches 0 run return 0

$give @s bat_spawn_egg{\
    display:{\
        Name:'{"text":"Team display","italic":false}',\
        Lore:['{"text":"Team: $(team)","italic":false}','{"text":"Click to join: $(click_to_join)","italic":false}']\
    },\
    EntityTag:{\
        id:"marker",\
        Tags:["lbmanager.display.spawn","lbmanager.display.team.spawn"],\
        data:{team:"$(team)",width:$(width),height:$(height),click_to_join:$(click_to_join)}\
    }\
}