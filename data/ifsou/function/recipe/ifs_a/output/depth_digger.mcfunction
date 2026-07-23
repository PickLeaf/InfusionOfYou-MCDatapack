execute if items block ~ ~ ~ container.0 \
    *[minecraft:enchantments~[{\
        enchantments:"#minecraft:exclusive_set/mining",\
        levels:{min:1}}]] \
    run return run \
        function ifsou:ifs_a/work/fail
execute unless items block ~ ~ ~ container.0 #minecraft:pickaxes \
    run return run \
        function ifsou:ifs_a/work/fail

item modify block ~ ~ ~ container.0 ifsou:enhance/depth_digger

playsound minecraft:entity.item.break block @a[distance=0..32]
playsound minecraft:block.stone.break block @a[distance=0..32]

function ifsou:ifs_a/work/drop