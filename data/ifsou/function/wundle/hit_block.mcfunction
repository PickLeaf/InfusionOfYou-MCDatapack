data modify storage ifsou:var wundle.handler \
    set from entity @s SelectedItem.components.\
    minecraft:bundle_contents[0].components.\
    "minecraft:custom_data"."ifsou:wundle_core".hit_block
function ifsou:wundle/macro \
    with storage ifsou:var wundle
data remove storage ifsou:var wundle