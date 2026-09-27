execute unless entity @s[gamemode=spectator] \
    run return fail
execute if function ifsou:handler/mannequin/chk_pos \
    run return fail
# 复活!
item replace entity @s armor.head \
    from entity @n[distance=..1,tag=IfsOU.mannequinTarget] \
    armor.head
item replace entity @s armor.chest \
    from entity @n[distance=..1,tag=IfsOU.mannequinTarget] \
    armor.chest
item replace entity @s armor.legs \
    from entity @n[distance=..1,tag=IfsOU.mannequinTarget] \
    armor.legs
item replace entity @s armor.feet \
    from entity @n[distance=..1,tag=IfsOU.mannequinTarget] \
    armor.feet
item replace entity @s weapon.mainhand \
    from entity @n[distance=..1,tag=IfsOU.mannequinTarget] \
    weapon.mainhand
item replace entity @s weapon.offhand \
    from entity @n[distance=..1,tag=IfsOU.mannequinTarget] \
    weapon.offhand
kill @n[distance=..1,tag=IfsOU.mannequinTarget]
tp @n[distance=..1,tag=IfsOU.mannequinTarget] \
    ~ -9999999 ~
summon minecraft:tnt ~ ~ ~ \
    {explosion_power: 16, fuse: -1}
effect give @s minecraft:resistance 1 255
gamemode survival
function ifsou:handler/mannequin/minus_health