data modify storage ifsou:var running.tick \
    set value 180
execute at @s run \
    summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:glass_bottle"}}