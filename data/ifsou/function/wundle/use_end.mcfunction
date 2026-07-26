tag @s remove IfsOU.LastUsingWundle
tag @s remove IfsOU.WundlePrepareEndUse

execute if data storage ifsou:var wundle.current_core.use_end \
    run function ifsou:wundle/toast_core

tag @s add IfsOU.WundlerUser
execute summon minecraft:item_display \
    run function ifsou:wundle/release_core
tag @s remove IfsOU.WundlerUser

data modify storage ifsou:var wundle.handler \
    set from storage ifsou:var wundle.current_core.use_end
function ifsou:wundle/macro \
    with storage ifsou:var wundle
data remove storage ifsou:var wundle