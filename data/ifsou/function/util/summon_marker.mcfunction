teleport @s ~ ~ ~ ~ ~
# set structure check function
data modify entity @s data."nutlet:structure_check" \
    set from storage ifsou:var structure_check
data remove storage ifsou:var structure_check
# get hex format UUID
function ifsou:util/get_hex_uuid

execute unless data entity @s data."ifsou:running" \
    run data modify entity @s data."ifsou:running" \
        set value {}
execute unless data entity @s data."ifsou:trigger" \
    run data modify entity @s data."ifsou:trigger" \
        set value {}