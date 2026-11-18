data remove storage ifsou:var running.fail
# head
data modify entity @s equipment.head.components."minecraft:equippable" \
    set value {"slot": "head"}
item modify entity @s armor.head ifsou:enhance/invisible_armor
# chest
data modify entity @s equipment.chest.components."minecraft:equippable" \
    set value {"slot": "chest"}
item modify entity @s armor.chest ifsou:enhance/invisible_armor
# legs
data modify entity @s equipment.legs.components."minecraft:equippable" \
    set value {"slot": "legs"}
item modify entity @s armor.legs ifsou:enhance/invisible_armor
# feet
data modify entity @s equipment.feet.components."minecraft:equippable" \
    set value {"slot": "feet"}
item modify entity @s armor.feet ifsou:enhance/invisible_armor
