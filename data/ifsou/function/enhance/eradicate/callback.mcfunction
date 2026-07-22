tag @s add IfsOU.Eradicate
# store player UUID
data modify entity @s data."ifsou:player".UUID \
    set from storage nutlet:var uuid.hex
# enchantment will check
data modify entity @s data."ifsou:player".enchantments \
    set value [{\
        enchantments: "ifsou:eradicate",\
        levels: {min: 1}}]