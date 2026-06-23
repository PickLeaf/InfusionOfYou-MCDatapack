# check version of nutlet
execute if predicate ifsou:check_nutlet \
    run return 1

data modify storage ifsou:print cmd.nutlet \
    set value {"translate": "ifsou.nutlet_low",\
        "fallback": "(Wrong Version of Nutlet Datapack)",\
        "color":"red"}