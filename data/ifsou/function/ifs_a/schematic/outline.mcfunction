# x
data modify storage nutlet:var schematic.transformation set value \
    {scale:[13f, 0.1f, 0.1f], translation:[-6.5f, -0.05f, -0.05f]}
execute positioned ~ ~0.5 ~6.5 \
    run function nutlet:-m/schematic/block
execute positioned ~ ~0.5 ~-6.5 \
    run function nutlet:-m/schematic/block
execute positioned ~ ~-2.5 ~6.5 \
    run function nutlet:-m/schematic/block
execute positioned ~ ~-2.5 ~-6.5 \
    run function nutlet:-m/schematic/block
# z
data modify storage nutlet:var schematic.transformation set value \
    {scale:[0.1f, 0.1f, 13f], translation:[-0.05f, -0.05f, -6.5f]}
execute positioned ~6.5 ~0.5 ~ \
    run function nutlet:-m/schematic/block
execute positioned ~-6.5 ~0.5 ~ \
    run function nutlet:-m/schematic/block
execute positioned ~6.5 ~-2.5 ~ \
    run function nutlet:-m/schematic/block
execute positioned ~-6.5 ~-2.5 ~ \
    run function nutlet:-m/schematic/block
# y
data modify storage nutlet:var schematic.transformation set value \
    {scale:[0.1f, 3.1f, 0.1f], translation:[-0.05f, -1.55f, -0.05f]}
execute positioned ~6.5 ~-1 ~6.5 \
    run function nutlet:-m/schematic/block
execute positioned ~-6.5 ~-1 ~6.5 \
    run function nutlet:-m/schematic/block
execute positioned ~6.5 ~-1 ~-6.5 \
    run function nutlet:-m/schematic/block
execute positioned ~-6.5 ~-1 ~-6.5 \
    run function nutlet:-m/schematic/block