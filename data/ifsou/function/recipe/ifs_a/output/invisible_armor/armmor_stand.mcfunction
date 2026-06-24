data remove storage ifsou:var running.fail
# head
item modify entity @s armor.head {\
    "function":"minecraft:set_components",\
    "components":{\
        "minecraft:equippable":{\
            "slot": "head"}}}
item modify entity @s armor.head ifsou:enhance/invisible_armor
data modify entity @s \
    equipment.head.components."minecraft:custom_data"."ifsou:enhance" \
    append value "ifsou:invisible_armor"
# chest
item modify entity @s armor.chest {\
    "function":"minecraft:set_components",\
    "components":{\
        "minecraft:equippable":{\
            "slot": "chest"}}}
item modify entity @s armor.chest ifsou:enhance/invisible_armor
data modify entity @s \
    equipment.chest.components."minecraft:custom_data"."ifsou:enhance" \
    append value "ifsou:invisible_armor"
# legs
item modify entity @s armor.legs {\
    "function":"minecraft:set_components",\
    "components":{\
        "minecraft:equippable":{\
            "slot": "legs"}}}
item modify entity @s armor.legs ifsou:enhance/invisible_armor
data modify entity @s \
    equipment.legs.components."minecraft:custom_data"."ifsou:enhance" \
    append value "ifsou:invisible_armor"
# feet
item modify entity @s armor.feet {\
    "function":"minecraft:set_components",\
    "components":{\
        "minecraft:equippable":{\
            "slot": "feet"}}}
item modify entity @s armor.feet ifsou:enhance/invisible_armor
data modify entity @s \
    equipment.feet.components."minecraft:custom_data"."ifsou:enhance" \
    append value "ifsou:invisible_armor"
