
teleport @s ~ ~ ~ ~ ~
data modify entity @s block_state.Name \
    set value "minecraft:glass"
data modify entity @s brightness \
    set value {block: 15, sky: 15}
data modify entity @s transformation set value \
    {scale:[3.1f, 3.1f, 1.1f],\
    translation:[-1.505f, -1.505f, -0.505f],\
    left_rotation:[0f, 0f, 0f, 1f],\
    right_rotation:[0f, 0f, 0f, 1f]}

data modify storage nutlet:var uuid.array \
    set from entity @s UUID
function nutlet:-m/hex_uuid