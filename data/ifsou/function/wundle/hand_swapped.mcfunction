tag @a add IfsOU.WundlerUser

execute as @p[tag=IfsOU.WundlerUser,distance=0..1] \
    if predicate ifsou:is_sneaking \
        run tag @a add IfsOU.IsSneaking

execute summon minecraft:item_display \
    run function ifsou:wundle/swap_hand

function ifsou:wundle/toast_core
tag @a remove IfsOU.IsSneaking
tag @a remove IfsOU.WundlerUser