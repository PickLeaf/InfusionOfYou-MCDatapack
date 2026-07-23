execute if data storage ifsou:var running.absorbingItem{id:"minecraft:gold_block"} \
    run return run data modify storage ifsou:var running.tick \
        set value 200
execute if data storage ifsou:var running.absorbingItem{id:"minecraft:resin_clump"} \
    run return run data modify storage ifsou:var running.tick \
        set value 100
data modify storage ifsou:var running.tick \
    set value 40