execute unless block ~ ~ ~ \
    #ifsou:iron_head_deleteable \
    run return fail
execute unless items entity @s container.* \
    minecraft:tnt \
    run return fail

clear @s minecraft:tnt 1
setblock ~ ~ ~ minecraft:air
playsound minecraft:entity.generic.explode player @a[distance=0..32]
particle minecraft:explosion ~ ~ ~ 0.125 0.125 0.125 1 3