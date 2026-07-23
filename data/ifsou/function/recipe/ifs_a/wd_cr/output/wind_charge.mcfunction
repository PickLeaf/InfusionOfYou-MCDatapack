execute unless items block ~ ~ ~ container.0 \
    minecraft:quartz \
    run return run \
        function ifsou:ifs_a/work/fail

item modify block ~ ~ ~ container.0 ifsou:minus_1
loot spawn ~ ~1 ~ loot ifsou:wundle_core/wind_charge

playsound minecraft:entity.wind_charge.wind_burst block @a[distance=0..32]
playsound minecraft:entity.breeze.charge block @a[distance=0..32]