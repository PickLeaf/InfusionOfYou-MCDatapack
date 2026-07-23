loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air
execute positioned ~ ~1 ~ \
    if block ~ ~ ~ #ifsou:mineable/eradicate \
    run function ifsou:enhance/eradicate/upward