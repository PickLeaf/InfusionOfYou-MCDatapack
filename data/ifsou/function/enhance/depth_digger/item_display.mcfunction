item replace entity @s container.0 from entity \
    @p[distance=0..1,tag=IfsOU.player] armor.body

data remove entity @s item.components.\
    "minecraft:attribute_modifiers"[{id:"ifsou:depth_digger"}]

item replace entity @p[distance=0..1,tag=IfsOU.player] armor.body \
    from entity @s container.0

kill @s