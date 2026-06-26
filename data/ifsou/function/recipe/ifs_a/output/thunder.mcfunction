execute unless items block ~ ~ ~ container.0 \
    minecraft:gold_block \
    run return run \
        function ifsou:ifs_a/work/fail

item modify block ~ ~ ~ container.0 {\
    function:"minecraft:set_item",\
    item:"minecraft:copper_block"}

weather thunder 1d

playsound minecraft:item.trident.thunder block @a
advancement grant @a[distance=0..32] only ifsou:thunder

function ifsou:ifs_a/work/drop