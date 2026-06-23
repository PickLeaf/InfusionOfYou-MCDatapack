execute if predicate ifsou:timer/10s \
    run function ifsou:ifs_a/structure_check

execute if entity @s[tag=IfsOU.infusing] \
    run return \
        run function ifsou:ifs_a/work/infusing

execute unless predicate ifsou:timer/2t \
    run return fail
execute if entity @s[tag=IfsOU.triggered] \
    run return \
        run function ifsou:ifs_a/work/triggered
execute if block ~ ~1 ~ minecraft:redstone_torch[lit=true] \
    at @s \
    run function ifsou:ifs_a/work/trigger