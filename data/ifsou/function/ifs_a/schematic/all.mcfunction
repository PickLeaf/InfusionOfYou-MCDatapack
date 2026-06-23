function ifsou:ifs_a/schematic/red_area

data modify storage nutlet:var schematic set value \
    {tick:200, transformation:{\
        scale:[0.4f, 0.4f, 0.4f], translation:[-0.2f, -0.2f, -0.2f]}}
# marker
data modify storage nutlet:var schematic.id set value \
    "minecraft:air"
function nutlet:-m/schematic/item

# key part
# - layer 1
data modify storage nutlet:var schematic.id set value \
    "minecraft:polished_blackstone"
execute positioned ~1 ~-2 ~1 \
    run function nutlet:-m/schematic/block
execute positioned ~-1 ~-2 ~1 \
    run function nutlet:-m/schematic/block
execute positioned ~1 ~-2 ~-1 \
    run function nutlet:-m/schematic/block
execute positioned ~-1 ~-2 ~-1 \
    run function nutlet:-m/schematic/block
# - layer 2
data modify storage nutlet:var schematic.id set value \
    "minecraft:polished_blackstone_stairs"
execute positioned ~1 ~-1 ~1 \
    run function nutlet:-m/schematic/block
execute positioned ~-1 ~-1 ~1 \
    run function nutlet:-m/schematic/block
execute positioned ~1 ~-1 ~-1 \
    run function nutlet:-m/schematic/block
execute positioned ~-1 ~-1 ~-1 \
    run function nutlet:-m/schematic/block
# center pot
data modify storage nutlet:var schematic.transformation set value \
    {scale:[1f, 1f, 1f], translation:[-0.5f, -0.5f, -0.5f]}
data modify storage nutlet:var schematic.id set value \
    "minecraft:decorated_pot"
execute positioned ~ ~-2 ~ \
    run function nutlet:-m/schematic/block
# torch on head
data modify storage nutlet:var schematic.id set value \
    "minecraft:redstone_torch"
execute positioned ~ ~1 ~ \
    run function nutlet:-m/schematic/block
# release data
data remove storage nutlet:var schematic