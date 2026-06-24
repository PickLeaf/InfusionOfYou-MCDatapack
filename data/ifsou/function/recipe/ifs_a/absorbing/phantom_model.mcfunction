execute if data storage ifsou:var running{absorbingItem:"minecraft:ender_pearl"} \
    run return run data modify storage ifsou:var running.tick \
        set value 100
execute if data storage ifsou:var running{absorbingItem:"minecraft:ink_sac"} \
    run return run data modify storage ifsou:var running.tick \
        set value 40
execute if data storage ifsou:var running{absorbingItem:"minecraft:name_tag"} \
    run return run data modify storage ifsou:var running.tick \
        set value 200