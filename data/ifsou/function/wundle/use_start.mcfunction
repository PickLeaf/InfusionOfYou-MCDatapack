tag @s add IfsOU.LastUsingWundle

data modify storage ifsou:var wundle.handler \
    set from entity @s SelectedItem.components.\
    minecraft:bundle_contents[0].components.\
    "minecraft:custom_data"."ifsou:wundle_core".use_start

function ifsou:wundle/macro \
    with storage ifsou:var wundle

data remove storage ifsou:var wundle.handler