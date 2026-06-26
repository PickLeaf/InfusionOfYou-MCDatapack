advancement grant @s only ifsou:nutlet/recipe

data modify storage nutlet:var list.list \
    set from storage ifsou:recipe IfsA.display
data modify storage nutlet:var list.handler \
    set value "ifsou:ifs_a/sub/recipe/foreach"
function nutlet:-m/list/foreach_list

function ifsou:ifs_a/sub/recipe/show_dialog \
    with storage ifsou:var dialog

data remove storage ifsou:var dialog
data remove storage nutlet:var list