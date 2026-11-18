execute unless items block ~ ~ ~ container.0 \
    * \
    run return fail
data modify storage nutlet:var schematic \
    set value {tick: 100, text: {\
            translate: "ifsou.info.PhantomModel.noName",\
            with: [{\
                translate: "item.minecraft.name_tag"}]},\
        mergeData: {billboard: "vertical",\
        see_through: true}}
# 如果命名牌没有命名则返回
execute unless data storage ifsou:var \
    running.items[{id:"minecraft:name_tag"}].components.\
    "minecraft:custom_name" \
    run return \
        run function nutlet:-m/schematic/text

data remove storage nutlet:var schematic
data remove storage ifsou:var running.stop
# 存储命名牌的名称
data modify entity @s data."ifsou:running".phantomModel \
    set from storage ifsou:var \
    running.items[{id:"minecraft:name_tag"}].components.\
    "minecraft:custom_name"