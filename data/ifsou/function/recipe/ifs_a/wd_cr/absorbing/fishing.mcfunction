execute if data storage ifsou:var running.absorbingItem{id:"minecraft:calibrated_sculk_sensor"} \
    run return run data modify storage ifsou:var running.tick \
        set value 160
execute if data storage ifsou:var running.absorbingItem{id:"minecraft:comparator"} \
    run return run data modify storage ifsou:var running.tick \
        set value 80

data modify storage ifsou:var running.tick \
    set value 40