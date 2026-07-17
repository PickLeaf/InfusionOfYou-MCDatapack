execute if items block ~ ~ ~ container.0 \
    *[minecraft:enchantments~[{\
        enchantments: "#minecraft:exclusive_set/mining",\
        levels: {min: 1}}]] \
    run return fail
execute unless items block ~ ~ ~ container.0 #minecraft:axes \
    run return fail

data remove storage ifsou:var running.stop