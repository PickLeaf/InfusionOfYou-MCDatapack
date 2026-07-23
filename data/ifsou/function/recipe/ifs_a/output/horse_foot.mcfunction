execute if items block ~ ~ ~ container.0 \
    *[minecraft:enchantments~[{\
        enchantments: "ifsou:horse_foot",\
        levels: {min: 1}}]] \
    run return run \
        function ifsou:ifs_a/work/fail
execute unless items block ~ ~ ~ container.0 #minecraft:foot_armor \
    run return run \
        function ifsou:ifs_a/work/fail
    
item modify block ~ ~ ~ container.0 ifsou:enhance/horse_foot

playsound minecraft:entity.horse.angry block @a[distance=0..32]

function ifsou:ifs_a/work/drop