# not hold depth_digger pickaxe, claen
execute unless items entity @s weapon.mainhand \
    *[minecraft:enchantments~[{enchantments:"ifsou:depth_digger",levels:{min:1}}]] \
    run return run \
        function ifsou:enhance/depth_digger/remove

execute unless predicate ifsou:is_sneaking \
    run return fail

execute unless entity @s[x_rotation=-90] \
    run return fail
    
data modify storage ifsou:var running.speed \
    set string entity @s equipment.body.components.\
    "minecraft:attribute_modifiers"[{id:"ifsou:depth_digger"}].amount \
    0 5
    
title @s actionbar {\
    "translate":"ifsou.actionbar.DepthDigger",\
    "with":[{\
        "type":"nbt",\
        "storage":"ifsou:var",\
        "nbt":'running.speed',\
        "interpret":true,\
        color:"#308cb0"}]}