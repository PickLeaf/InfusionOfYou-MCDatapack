item replace entity @s container.0 with minecraft:firework_star\
    [minecraft:lore=[{\
        italic: false,\
        color: "gray",\
        translate: "ifsou.lore.useRemainder",\
        extra: [{\
            color: "aqua",\
            translate: "ifsou.item.Wundle"}]}],\
    minecraft:use_cooldown={\
        seconds: 0.1,\
        cooldown_group: "ifsou:fishing_wundle_core"},\
    minecraft:consumable={\
        animation: "none",\
        consume_seconds: 0,\
        has_consume_particles: false,\
        sound: "minecraft:intentionally_empty"}]
data modify entity @s item.components."minecraft:use_cooldown".seconds \
    set from storage ifsou:var running.seconds

data modify entity @s item.components."minecraft:use_remainder" \
    set from storage ifsou:var running
data modify entity @s item.components."minecraft:use_remainder".\
    components."minecraft:use_cooldown" \
    set value {\
        seconds: 1,\
        cooldown_group: "ifsou:fishing_wundle_core"}

item replace entity \
    @p[distance=0..2,tag=IfsOU.TargetPlayer] weapon.mainhand \
    from entity @s container.0

kill @s