tag @a add IfsOU.WundlerUser

execute as @p[tag=IfsOU.WundlerUser,distance=0..1] \
    if predicate ifsou:is_sneaking \
        run tag @a add IfsOU.IsSneaking

execute summon minecraft:item_display \
    run function ifsou:wundle/swap_hand

tag @a remove IfsOU.IsSneaking
tag @a remove IfsOU.WundlerUser

execute if data entity @s \
    SelectedItem.components.minecraft:bundle_contents[0] \
    run return run \
        title @s actionbar {"type":"nbt",entity:"@s",nbt:'SelectedItem.components.\
            minecraft:bundle_contents[0].components."minecraft:item_name"',interpret:true}
function ifsou:wundle/toast_core