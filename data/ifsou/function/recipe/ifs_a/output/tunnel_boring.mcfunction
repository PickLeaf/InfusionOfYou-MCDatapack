execute if items block ~ ~ ~ container.0 \
    *[minecraft:enchantments~[{\
        enchantments:"ifsou:tunnel_boring",\
        levels:{min:1}}]] \
    run return run \
        function ifsou:ifs_a/work/fail
execute unless items block ~ ~ ~ container.0 #minecraft:pickaxes \
    run return run \
        function ifsou:ifs_a/work/fail

item modify block ~ ~ ~ container.0 ifsou:enhance/tunnel_boring

playsound minecraft:item.honeycomb.wax_on block @a[distance=0..32]
playsound minecraft:item.axe.wax_off block @a[distance=0..32]

function ifsou:ifs_a/work/drop