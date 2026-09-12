data modify storage ifsou:var running.tick \
    set value 240
execute at @s run \
    summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:glass_bottle"}}