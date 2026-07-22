# store player UUID
data modify entity @s data."ifsou:player".UUID \
    set from storage nutlet:var uuid.hex
# enchantment will check
data modify entity @s data."ifsou:player".enchantments \
    set value [{\
        enchantments: "ifsou:tunnel_boring",\
        levels: {min: 1}}]
teleport @s ~ ~ ~ ~ ~
tag @s add IfsOU.TunnelBoring
# block display entity
execute summon minecraft:block_display \
    run function ifsou:enhance/tunnel_boring/display
data modify entity @s data."ifsou:display".UUID \
    set from storage nutlet:var uuid.hex
