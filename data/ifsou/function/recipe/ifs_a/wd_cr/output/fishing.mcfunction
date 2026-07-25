execute unless items block ~ ~ ~ container.0 \
    minecraft:pufferfish \
    run return run \
        function ifsou:ifs_a/work/fail
    
item modify block ~ ~ ~ container.0 ifsou:minus_1
loot spawn ~ ~1 ~ loot ifsou:wundle_core/fishing

playsound minecraft:entity.fishing_bobber.retrieve block @a[distance=0..32]
playsound minecraft:entity.fishing_bobber.splash block @a[distance=0..32]