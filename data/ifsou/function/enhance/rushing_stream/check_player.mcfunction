execute unless items entity @s weapon.mainhand \
    *[minecraft:enchantments~[{\
        enchantments: "ifsou:rushing_stream",\
        levels: {min: 1}}]] \
    run data remove storage ifsou:var running.stop