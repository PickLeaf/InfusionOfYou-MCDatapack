data modify storage nutlet:var schematic \
    set value {tick: 100, text: {\
            translate: "ifsou.info.no_",\
            with: [{\
                translate: "entity.minecraft.villager"}]},\
        mergeData: {\
            billboard: "vertical",\
            see_through: true}}
execute at @s run \
    function nutlet:-m/schematic/text