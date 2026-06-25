execute if items block ~ ~ ~ container.0 \
    *[miencraft:unbreakable~{}] \
    run return run \
        function ifsou:ifs_a/work/fail
execute unless items block ~ ~ ~ container.0 \
    *[minecraft:enchantments~[{enchantments:"minecraft:mending",levels:{min:1}}]] \
    run return run \
        function ifsou:ifs_a/work/fail

item modify block ~ ~ ~ container.0 ifsou:enhance/unbreakable
data modify block ~ ~ ~ \
    item.components."minecraft:custom_data"."ifsou:enhance" \
    append value "ifsou:unbreakable"

playsound minecraft:block.beacon.activate block @a
playsound minecraft:item.totem.use block @a
playsound minecraft:entity.lingering_potion.throw block @a
playsound minecraft:entity.axolotl.hurt block @a