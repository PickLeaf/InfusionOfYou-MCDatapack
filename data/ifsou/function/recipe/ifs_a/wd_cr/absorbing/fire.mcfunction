execute if data storage ifsou:var running.absorbingItem{id:"minecraft:blaze_rod"} \
    run return run data modify storage ifsou:var running.tick \
        set value 220
execute if data storage ifsou:var running.absorbingItem{id:"minecraft:ghast_tear"} \
    run return run data modify storage ifsou:var running.tick \
        set value 100

data modify storage ifsou:var running.tick \
    set value 40