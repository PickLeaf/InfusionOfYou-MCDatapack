advancement revoke @s only ifsou:func/wundle_use

tag @s add IfsOU.WundlerUser
execute if entity @e[type=minecraft:item,distance=0..2.5,nbt={Age:1s}] \
    summon minecraft:item_display \
    run function ifsou:wundle/return_core
tag @s remove IfsOU.WundlerUser

execute unless entity \
    @s[tag=IfsOU.LastUsingWundle] \
    run return run \
        function ifsou:wundle/use_start

execute if data storage ifsou:var wundle.longPress \
    run function ifsou:wundle/long_press

function ifsou:wundle/toast_core
data modify storage ifsou:var wundle.handler \
    set from entity @s SelectedItem.components.\
    minecraft:bundle_contents[0].components.\
    "minecraft:custom_data"."ifsou:wundle_core".using
function ifsou:wundle/macro \
    with storage ifsou:var wundle
data remove storage ifsou:var wundle

tag @s add IfsOU.LastUsingWundle