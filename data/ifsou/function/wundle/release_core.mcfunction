item replace entity @s container.0 \
    from entity \
    @p[tag=IfsOU.WundlerUser,distance=0..2] weapon.mainhand

data modify entity @s \
    item.components."minecraft:bundle_contents" \
    set from entity @s \
    item.components."minecraft:custom_data"."ifsou:wundle_cores"
data modify storage ifsou:var wundle.current_core \
    set from entity @s item.components.\
    "minecraft:bundle_contents"[0].components.\
    "minecraft:custom_data"."ifsou:wundle_core"
data remove entity @s item.components.\
    "minecraft:custom_data"."ifsou:wundle_cores"
data remove entity @s item.components.\
    "minecraft:custom_data"."ifsou:current_core"

item replace entity \
    @p[tag=IfsOU.WundlerUser,distance=0..2] weapon.mainhand \
    from entity @s container.0

kill @s