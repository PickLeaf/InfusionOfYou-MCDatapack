scoreboard players set A IfsOU.Clac 0
execute store result score A IfsOU.Clac \
    run scoreboard players get @s IfsOU.ResurrectionPunishment
scoreboard players remove A IfsOU.Clac 2
scoreboard players operation \
    @s IfsOU.ResurrectionPunishment \
    = A IfsOU.Clac
execute store result storage \
    ifsou:mannequin punishment int 1 \
    run scoreboard players get A IfsOU.Clac
function ifsou:handler/mannequin/attribute_ma \
    with storage ifsou:mannequin