execute if items block ~ ~ ~ container.0 \
    *[minecraft:enchantments~[{\
        enchantments: "#minecraft:exclusive_set/mining",\
        levels: {min: 1}}]] \
    run return run \
        function ifsou:ifs_a/work/fail
execute unless items block ~ ~ ~ container.0 #minecraft:axes \
    run return run \
        function ifsou:ifs_a/work/fail
    
item modify block ~ ~ ~ container.0 ifsou:enhance/rushing_stream

playsound minecraft:item.axe.scrape block @a
playsound minecraft:item.axe.strip block @a

function ifsou:ifs_a/work/drop