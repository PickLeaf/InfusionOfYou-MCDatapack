tag @s add IfsOU.ReturnCore
item replace entity @s container.0 \
    from entity \
    @p[tag=IfsOU.WundlerUser,distance=0..2] weapon.mainhand
data remove entity @s \
    item.components."minecraft:use_cooldown"

execute as @e[type=minecraft:item,distance=0..2.5,nbt={Age:1s}] \
    if data entity @s \
    Item.components."minecraft:custom_data"."ifsou:wundle_core" \
    run function ifsou:wundle/catch_core
item replace entity \
    @p[tag=IfsOU.WundlerUser,distance=0..2] weapon.mainhand \
    from entity @s container.0
tag @s remove IfsOU.ReturnCore

kill @s