# 根据吸收的物品设定后摇
# set delay time according item absorbing
execute if data storage ifsou:var running{absorbingItem:"minecraft:piston"} \
    run return run data modify storage ifsou:var running.tick \
        set value 100
execute if data storage ifsou:var running{absorbingItem:"minecraft:wind_charge"} \
    run return run data modify storage ifsou:var running.tick \
        set value 60
execute if data storage ifsou:var running{absorbingItem:"minecraft:rabbit_foot"} \
    run return run data modify storage ifsou:var running.tick \
        set value 60