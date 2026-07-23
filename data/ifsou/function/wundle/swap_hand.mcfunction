item replace entity @s container.0 \
    from entity \
    @p[tag=IfsOU.WundlerUser,distance=0..1] weapon.offhand

function ifsou:wundle/scroll

execute as @p[tag=IfsOU.WundlerUser,distance=0..1] \
    run item replace entity @s weapon.offhand \
        from entity @s weapon.mainhand
item replace entity \
    @p[tag=IfsOU.WundlerUser,distance=0..1] weapon.mainhand \
    from entity @s container.0

kill @s