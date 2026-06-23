data modify storage nutlet:var schematic set value \
    {tick:200, alwaysShow:1b,\
    bright:15, id:"minecraft:lime_concrete"}

function ifsou:ifs_a/schematic/outline


data modify storage nutlet:var schematic.transformation set value \
    {scale:[3f, 3f, 3f], translation:[0f, 0f, 0f]}
data modify storage nutlet:var schematic.mergeData set value \
    {billboard:"center", see_through:true}
data modify storage nutlet:var schematic.text set value \
    {\
        "type": "object",\
        "object": "atlas",\
        "atlas": "minecraft:items",\
        "sprite": "minecraft:item/item_frame"\
    }
execute positioned ~-6.5 ~-3.5 ~-6.5 \
    as @e[type=#ifsou:item_frame,dx=12,dy=2,dz=12] \
    at @s align xyz \
    positioned ~0.5 ~0.1 ~0.5 \
    run function nutlet:-m/schematic/text

# release data
data remove storage nutlet:var schematic