execute if items block ~ ~ ~ container.0 \
    *[minecraft:enchantments~[{\
        enchantments:"ifsou:eradicate",\
        levels:{min:1}}]] \
    run return fail
execute unless items block ~ ~ ~ container.0 #minecraft:shovels \
    run return fail

data remove storage ifsou:var running.stop