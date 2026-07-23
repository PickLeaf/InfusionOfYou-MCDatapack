data modify entity @s \
    item.components."minecraft:bundle_contents" \
    append from entity @s \
    item.components."minecraft:bundle_contents"[0]
data remove entity @s \
    item.components."minecraft:bundle_contents"[0]