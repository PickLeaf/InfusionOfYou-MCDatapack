tag @s add IfsOU.LastUsingWundle

execute if data storage ifsou:var wundle.current_core.use_start \
    run function ifsou:wundle/toast_core
data modify storage ifsou:var wundle.handler \
    set from storage ifsou:var wundle.current_core.use_start
function ifsou:wundle/macro \
    with storage ifsou:var wundle
data remove storage ifsou:var wundle
