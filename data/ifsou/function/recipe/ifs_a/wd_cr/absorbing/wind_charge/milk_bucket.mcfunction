data modify storage ifsou:var running.tick \
    set value 40
execute at @s run \
    summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:bucket"}}