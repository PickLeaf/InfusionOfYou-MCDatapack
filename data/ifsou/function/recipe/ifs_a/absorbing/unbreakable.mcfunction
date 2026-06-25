execute if data storage ifsou:var running.absorbingItem{id:"minecraft:axolotl_bucket"} \
    run return run \
        function ifsou:recipe/ifs_a/absorbing/unbreakable/axolotl_bucket
execute if data storage ifsou:var running.absorbingItem{id:"minecraft:enchanted_golden_apple"} \
    run return run \
        function ifsou:recipe/ifs_a/absorbing/unbreakable/enchanted_golden_apple

data modify storage ifsou:var running.tick \
    set value 180