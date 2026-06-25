data modify storage ifsou:var running.tick \
    set value 6000
execute at @s run \
    summon minecraft:item ~ ~ ~ \
        {Item:{id:"minecraft:apple"}}