execute if items block ~ ~ ~ container.0 \
    *[minecraft:unbreakable] \
    run return run \
        function ifsou:ifs_a/work/fail
execute unless items block ~ ~ ~ container.0 \
    *[minecraft:enchantments~[{enchantments:"minecraft:mending",levels:{min:1}}]] \
    run return run \
        function ifsou:ifs_a/work/fail

item modify block ~ ~ ~ container.0 ifsou:enhance/unbreakable

playsound minecraft:block.beacon.activate block @a
playsound minecraft:item.totem.use block @a
playsound minecraft:entity.lingering_potion.throw block @a
playsound minecraft:entity.axolotl.hurt block @a

function ifsou:ifs_a/work/drop