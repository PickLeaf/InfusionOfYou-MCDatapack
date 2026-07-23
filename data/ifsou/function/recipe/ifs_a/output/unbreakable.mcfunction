execute if items block ~ ~ ~ container.0 \
    *[minecraft:unbreakable] \
    run return run \
        function ifsou:ifs_a/work/fail
execute unless items block ~ ~ ~ container.0 \
    *[minecraft:enchantments~[{enchantments:"minecraft:mending",levels:{min:1}}]] \
    run return run \
        function ifsou:ifs_a/work/fail

item modify block ~ ~ ~ container.0 ifsou:enhance/unbreakable

playsound minecraft:block.beacon.activate block @a[distance=0..32]
playsound minecraft:item.totem.use block @a[distance=0..32]
playsound minecraft:entity.lingering_potion.throw block @a[distance=0..32]
playsound minecraft:entity.axolotl.hurt block @a[distance=0..32]

function ifsou:ifs_a/work/drop