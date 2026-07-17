execute unless function ifsou:enhance/horse_foot/new_tick \
    run return fail

execute store result score @s IfsOU.Clac \
    run time query gametime

execute if entity @s[x_rotation=90] \
    run function ifsou:enhance/horse_foot/is_look_down
execute if predicate ifsou:is_sneaking \
    run function ifsou:enhance/horse_foot/is_sneaking

execute if items entity @s armor.body \
    *[minecraft:enchantments~[{\
        enchantments: "ifsou:horse_foot",\
        levels: {min: 1}}]] \
    run function ifsou:enhance/horse_foot/has_baubles
