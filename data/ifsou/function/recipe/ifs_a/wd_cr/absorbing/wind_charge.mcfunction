execute if data storage ifsou:var running.absorbingItem{id:"minecraft:milk_bucket"} \
    run return run \
        function ifsou:recipe/ifs_a/wd_cr/absorbing/wind_charge/milk_bucket
execute if data storage ifsou:var running.absorbingItem{id:"minecraft:breeze_rod"} \
    run return run data modify storage ifsou:var running.tick \
        set value 220
execute if data storage ifsou:var running.absorbingItem{id:"minecraft:chorus_flower"} \
    run return run data modify storage ifsou:var running.tick \
        set value 100