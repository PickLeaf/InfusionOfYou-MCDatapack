execute unless items block ~ ~ ~ container.0 \
    minecraft:golden_pickaxe \
    run return run \
        function ifsou:ifs_a/work/fail
    
item modify block ~ ~ ~ container.0 ifsou:minus_1
loot spawn ~ ~1 ~ loot ifsou:wundle_core/iron_head

playsound minecraft:block.piston.extend block @a[distance=0..32]
playsound minecraft:entity.generic.explode block @a[distance=0..32]