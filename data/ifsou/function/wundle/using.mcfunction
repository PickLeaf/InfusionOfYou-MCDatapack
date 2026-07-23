advancement revoke @s only ifsou:func/wundle_use

tag @s add IfsOU.WundlerUser
execute summon minecraft:item_display \
    run function ifsou:wundle/return_core
tag @s remove IfsOU.WundlerUser

execute unless entity \
    @s[tag=IfsOU.LastUsingWundle] \
    run return run \
        function ifsou:wundle/use_start

function ifsou:wundle/toast_core
data modify storage ifsou:var wundle.handler \
    set from entity @s SelectedItem.components.\
    minecraft:bundle_contents[0].components.\
    "minecraft:custom_data"."ifsou:wundle_core".using
function ifsou:wundle/macro \
    with storage ifsou:var wundle
data remove storage ifsou:var wundle

tag @s add IfsOU.LastUsingWundle