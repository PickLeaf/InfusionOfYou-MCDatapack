execute unless items block ~ ~ ~ container.0 \
    minecraft:diamond \
    run return run \
        function ifsou:ifs_a/work/fail
    
item modify block ~ ~ ~ container.0 ifsou:minus_1
loot spawn ~ ~1 ~ loot ifsou:wundle_core/snowball

playsound minecraft:entity.snowball.throw block @a[distance=0..32]
playsound minecraft:block.snow.break block @a[distance=0..32]