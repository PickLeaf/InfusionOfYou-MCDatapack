data remove storage ifsou:mannequin continue
execute unless predicate ifsou:mannequin_beacon \
    run return fail

effect give @s minecraft:glowing 1
data modify storage ifsou:mannequin Pos \
    set from entity @s Pos
tag @s add IfsOU.mannequinTarget
function ifsou:handler/mannequin/2player \
    with entity @s profile
tag @s remove IfsOU.mannequinTarget