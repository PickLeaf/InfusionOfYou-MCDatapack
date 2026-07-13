execute unless items entity @s armor.feet \
    *[minecraft:enchantments~[{\
        enchantments: "ifsou:horse_foot",\
        levels: {min: 1}}]] \
    run return run \
        item modify entity @s armor.body \
            ifsou:horse_foot/remove

execute unless entity @s[x_rotation=90] \
    run item modify entity @s armor.body \
        ifsou:horse_foot/rm_jump_strength
execute unless predicate ifsou:is_sneaking \
    run item modify entity @s armor.body \
        ifsou:horse_foot/rm_step_height

execute unless entity @s[x_rotation=90] \
    unless predicate ifsou:is_sneaking \
    run item modify entity @s armor.body \
            ifsou:horse_foot/remove