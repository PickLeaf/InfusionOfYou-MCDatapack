execute unless items block ~ ~ ~ container.0 \
    #minecraft:bundles \
    run return run \
        function ifsou:ifs_a/work/fail
    
item modify block ~ ~ ~ container.0 ifsou:wundle

playsound minecraft:entity.player.levelup block @a[distance=0..32]

function ifsou:ifs_a/work/drop