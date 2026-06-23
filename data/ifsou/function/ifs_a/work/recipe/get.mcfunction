# invoke function macro
function ifsou:ifs_a/work/recipe/get_macro \
        with storage ifsou:var running
# return if haven't recipe
execute unless data storage ifsou:var running.R \
    run return 1
# valid recipe, store back in marker
data modify entity @s data."ifsou:trigger".cacheHash \
    set from storage ifsou:var running.hash
data modify entity @s data."ifsou:trigger".R \
    set from storage ifsou:var running.R
# and return
return fail