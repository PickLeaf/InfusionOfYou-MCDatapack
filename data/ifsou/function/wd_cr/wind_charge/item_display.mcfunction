item replace entity @s container.0 with minecraft:wind_charge\
    [minecraft:lore=[{\
        italic: false,\
        color: "gray",\
        translate: "ifsou.lore.useRemainder",\
        extra: [{\
            color: "aqua",\
            translate: "ifsou.item.Wundle"}]}]]

data modify entity @s item.components."minecraft:use_remainder" \
    set from storage ifsou:var running

item replace entity \
    @p[distance=0..2,tag=IfsOU.TargetPlayer] weapon.mainhand \
    from entity @s container.0

kill @s