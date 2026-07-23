data modify entity @s \
    item.components."minecraft:bundle_contents" \
    prepend from entity @s \
    item.components."minecraft:bundle_contents"[-1]
data remove entity @s \
    item.components."minecraft:bundle_contents"[-1]