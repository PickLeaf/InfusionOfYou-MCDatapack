item replace entity @s container.0 with minecraft:snowball\
    [minecraft:lore=[{\
        italic: false,\
        color: "gray",\
        translate: "ifsou.lore.useRemainder",\
        extra: [{\
            color: "aqua",\
            translate: "ifsou.item.Wundle"}]}],\
    minecraft:use_cooldown={\
        seconds: 0.9,\
        cooldown_group: "ifsou:snowball_wundle_core"}]

data modify entity @s item.components."minecraft:use_remainder" \
    set from storage ifsou:var running
data modify entity @s item.components."minecraft:use_remainder".\
    components."minecraft:use_cooldown" \
    set value {\
        seconds: 0.9,\
        cooldown_group: "ifsou:snowball_wundle_core"}

item replace entity \
    @p[distance=0..2,tag=IfsOU.TargetPlayer] weapon.mainhand \
    from entity @s container.0

kill @s