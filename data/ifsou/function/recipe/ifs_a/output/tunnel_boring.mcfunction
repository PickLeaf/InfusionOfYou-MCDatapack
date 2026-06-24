execute if items block ~ ~ ~ container.0 \
    *[minecraft:enchantments~[{enchantments:"ifsou:tunnel_boring",levels:{min:1}}]] \
    run return run \
        function ifsou:ifs_a/work/fail
execute unless items block ~ ~ ~ container.0 #minecraft:pickaxes \
    run return run \
        function ifsou:ifs_a/work/fail

item modify block ~ ~ ~ container.0 ifsou:enhance/tunnel_boring
data modify block ~ ~ ~ \
    item.components."minecraft:custom_data"."ifsou:enhance" \
    append value "ifsou:tunnel_boring"

playsound item.honeycomb.wax_on block @a
playsound minecraft:item.axe.wax_off block @a