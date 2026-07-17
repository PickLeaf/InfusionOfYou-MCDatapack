execute if data storage ifsou:var running.absorbingItem{id:"minecraft:water_bucket"} \
    at @s run return run \
        summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:bucket"}}
execute if data storage ifsou:var running.absorbingItem{id:"minecraft:sticky_piston"} \
    run return run data modify storage ifsou:var running.tick \
        set value 80
execute if data storage ifsou:var running.absorbingItem{id:"minecraft:diamond"} \
    run return run data modify storage ifsou:var running.tick \
        set value 80