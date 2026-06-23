execute if items block ~ ~ ~ container.0 \
    *[minecraft:enchantments~[{enchantments:"ifsou:tunnel_boring",levels:{min:1}}]] \
    run return fail
execute unless items block ~ ~ ~ container.0 #minecraft:pickaxes \
    run return fail

data remove storage ifsou:var running.stop