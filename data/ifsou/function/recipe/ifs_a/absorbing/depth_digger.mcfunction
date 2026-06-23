execute if data storage ifsou:var running{absorbingItem:"minecraft:deepslate"} \
    run return run data modify storage ifsou:var running.tick \
        set value 40
execute if data storage ifsou:var running{absorbingItem:"minecraft:smooth_basalt"} \
    run return run data modify storage ifsou:var running.tick \
        set value 60
execute if data storage ifsou:var running{absorbingItem:"minecraft:blackstone"} \
    run return run data modify storage ifsou:var running.tick \
        set value 80
execute if data storage ifsou:var running{absorbingItem:"minecraft:obsidian"} \
    run return run data modify storage ifsou:var running.tick \
        set value 100
execute if data storage ifsou:var running{absorbingItem:"minecraft:smooth_quartz"} \
    run return run data modify storage ifsou:var running.tick \
        set value 50