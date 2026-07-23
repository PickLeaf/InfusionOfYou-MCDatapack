execute unless items block ~ ~ ~ container.0 \
    minecraft:crying_obsidian \
    run return run \
        function ifsou:ifs_a/work/fail
    
item modify block ~ ~ ~ container.0 ifsou:minus_1
loot spawn ~ ~1 ~ loot ifsou:wundle_core/ender_pearl

playsound minecraft:entity.enderman.teleport block @a[distance=0..32]
playsound minecraft:entity.ender_pearl.throw block @a[distance=0..32]