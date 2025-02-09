$tellraw @s [\
    {"text":"- "},\
    {\
        "text":"$(target_team)",\
        "hoverEvent":{\
            "action":"show_text",\
            "contents":[\
                {"text":"Display name: "},\
                {"storage":"lbmanager:main","nbt":"teams.\"$(target_team)\".name","interpret":true},\
                {"text":"\nMinecraft team: "},{"storage":"lbmanager:main","nbt":"teams.\"$(target_team)\".mc_team"},\
                {"text":"\nMax count: "},{"score":{"name":"$(target_team)","objective":"lbmanager.teams.max_count"}},\
                {"text":"\nPlayer count: "},{"score":{"name":"$(target_team)","objective":"lbmanager.teams.player_count"}}\
            ]\
        }\
    }\
]