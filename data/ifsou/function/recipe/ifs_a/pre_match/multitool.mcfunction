execute unless items block ~ ~ ~ container.0 \
    minecraft:totem_of_undying \
    run return fail

execute unless data storage ifsou:var \
    running.items[{id:"minecraft:lingering_potion"}].components.\
    "minecraft:potion_contents"{potion:"minecraft:oozing"} \
    run return fail

data remove storage ifsou:var running.stop