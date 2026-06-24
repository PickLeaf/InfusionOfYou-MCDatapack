execute unless data storage ifsou:var \
    running.items[{id:"minecraft:potion"}].components.\
    "minecraft:potion_contents"{potion:"minecraft:long_invisibility"} \
    run return fail
execute positioned ~-1 ~ ~-1 \
    unless entity @e[dx=2,dy=0,dz=2,type=minecraft:armor_stand] \
    run return fail
data remove storage ifsou:var running.stop