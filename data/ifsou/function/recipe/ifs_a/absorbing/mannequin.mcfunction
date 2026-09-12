execute if data storage ifsou:var running.absorbingItem{id:"minecraft:lingering_potion"} \
    run return run \
        function ifsou:recipe/ifs_a/absorbing/mannequin/potion
execute if data storage ifsou:var running.absorbingItem{id:"minecraft:wither_skeleton_skull"} \
    run return run \
        data modify storage ifsou:var running.tick \
            set value 300
execute if data storage ifsou:var running.absorbingItem{id:"minecraft:echo_shard"} \
    run return run \
        data modify storage ifsou:var running.tick \
            set value 400
data modify storage ifsou:var running.tick \
    set value 100