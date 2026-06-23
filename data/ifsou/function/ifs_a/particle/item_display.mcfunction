
teleport @s ~ ~ ~ ~ ~
data modify entity @s item \
    set from storage ifsou:var running.items[-1]
data modify entity @s transformation set value \
    {scale:[0.75f, 0.75f, 0.75f],\
    translation:[0f, 0f, 0f],\
    left_rotation:[0f, 0f, 0f, 1f],\
    right_rotation:[0f, 0f, 0f, 1f]}
data modify entity @s item_display \
    set value "none"

data modify storage ifsou:var running.displayUUID \
    set from entity @s UUID