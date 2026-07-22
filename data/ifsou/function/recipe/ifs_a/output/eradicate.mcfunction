execute if items block ~ ~ ~ container.0 \
    *[minecraft:enchantments~[{\
        enchantments:"ifsou:eradicate",\
        levels:{min:1}}]] \
    run return run \
        function ifsou:ifs_a/work/fail
execute unless items block ~ ~ ~ container.0 #minecraft:shovels \
    run return run \
        function ifsou:ifs_a/work/fail

item modify block ~ ~ ~ container.0 ifsou:enhance/eradicate

playsound minecraft:block.gravel.break block @a
playsound minecraft:block.sand.place block @a

function ifsou:ifs_a/work/drop