execute unless items block ~ ~ ~ container.0 \
    minecraft:gold_block \
    run return fail

execute unless data storage ifsou:var \
    running.items[{id:"minecraft:trident"}].components.\
    "minecraft:enchantments"."minecraft:channeling" \
    run return fail

execute unless data storage ifsou:var \
    running.items[{id:"minecraft:potion"}].components.\
    "minecraft:potion_contents"{potion:"minecraft:strong_swiftness"} \
    run return fail

data remove storage ifsou:var running.stop