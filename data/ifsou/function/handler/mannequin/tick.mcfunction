execute unless predicate ifsou:timer/1s \
    run return fail
data modify storage ifsou:mannequin continue \
    set value 1b
execute on vehicle \
    at @s[type=minecraft:mannequin] \
    run function ifsou:handler/mannequin/vehicle
execute unless data storage \
    ifsou:mannequin {continue:1b} \
    run return fail
data remove storage ifsou:mannequin continue
kill @s