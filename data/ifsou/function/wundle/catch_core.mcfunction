data modify entity \
    @e[type=minecraft:item_display,distance=0..,\
    tag=IfsOU.ReturnCore,limit=1] \
    item.components."minecraft:bundle_contents" \
    append from entity @s Item

kill @s