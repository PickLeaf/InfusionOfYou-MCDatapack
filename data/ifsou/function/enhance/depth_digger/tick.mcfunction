# not hold depth_digger pickaxe, claen
execute unless items entity @s weapon.mainhand \
    *[minecraft:enchantments~[{enchantments:"#minecraft:exclusive_set/mining",levels:{min:1}}]] \
    run return run \
        function ifsou:enhance/depth_digger/remove

execute unless predicate {\
    "condition":"minecraft:entity_properties",\
    "entity":"this",\
    "predicate":{\
        "flags":{\
            "is_sneaking":true}}} \
    run return fail
    
data modify storage ifsou:var running.speed \
    set string entity @s equipment.body.components.\
    "minecraft:attribute_modifiers"[{id:"ifsou:depth_digger"}].amount \
    0 -1
    
title @s actionbar {\
    "translate":"ifsou.actionbar.DepthDigger",\
    "with":[{\
        "type":"nbt",\
        "storage":"ifsou:var",\
        "nbt":'running.speed',\
        "interpret":true,\
        color:"#308cb0"}]}