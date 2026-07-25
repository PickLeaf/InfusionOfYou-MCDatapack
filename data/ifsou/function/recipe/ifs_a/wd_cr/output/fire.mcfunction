execute unless items block ~ ~ ~ container.0 \
    *[minecraft:custom_data~{id:"ifsou:snowball_wundle_core"}] \
    run return run \
        function ifsou:ifs_a/work/fail
    
item modify block ~ ~ ~ container.0 ifsou:minus_1
loot spawn ~ ~1 ~ loot ifsou:wundle_core/fire

playsound minecraft:entity.blaze.shoot block @a[distance=0..32]
playsound minecraft:entity.blaze.burn block @a[distance=0..32]