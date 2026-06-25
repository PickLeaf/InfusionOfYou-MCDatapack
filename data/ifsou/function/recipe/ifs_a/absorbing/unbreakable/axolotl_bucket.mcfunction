data modify storage ifsou:var running.tick \
    set value 600
execute at @s run \
    summon minecraft:item ~ ~ ~ \
        {Item:{id:"minecraft:bucket"}}