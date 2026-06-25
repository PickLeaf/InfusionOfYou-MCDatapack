execute if items block ~ ~ ~ container.0 \
    *[minecraft:unbreakable] \
    run return fail
execute unless items block ~ ~ ~ container.0 \
    *[minecraft:enchantments~[{enchantments:"minecraft:mending",levels:{min:1}}]] \
    run return fail
execute unless data storage ifsou:var \
    running.items[{id:"minecraft:axolotl_bucket"}].components\
    {"minecraft:axolotl/variant":"blue"} \
    run return fail
execute unless data storage ifsou:var \
    running.items[{id:"minecraft:lingering_potion"}].components.\
    "minecraft:potion_contents"{"potion": "minecraft:long_regeneration"} \
    run return fail
execute unless data storage ifsou:var \
    running.items[{id:"minecraft:lingering_potion"}].components.\
    "minecraft:potion_contents"{"potion": "minecraft:strong_healing"} \
    run return fail

data remove storage ifsou:var running.stop