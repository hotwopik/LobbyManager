$tellraw @s [\
    {"text":"- "},\
    {\
        "text":"$(target_team)",\
        "hoverEvent":{\
            "action":"show_text",\
            "contents":[\
                {"storage":"lbmanager:translation","nbt":"list.minecraft_team","interpret":true},{"storage":"lbmanager:main","nbt":"teams.\"$(target_team)\".mc_team"},\
                {"text":"\n"},{"storage":"lbmanager:translation","nbt":"list.max_count","interpret":true},{"score":{"name":"$(target_team)","objective":"lbmanager.teams.max_count"}},\
                {"text":"\n"},{"storage":"lbmanager:translation","nbt":"list.player_count","interpret":true},{"score":{"name":"$(target_team)","objective":"lbmanager.teams.player_count"}}\
            ]\
        }\
    }\
]