# empty recipe
data remove storage ifsou:var running.R
# get recipe
$data modify storage ifsou:var running.R \
    set from storage ifsou:recipe IfsA.running.'$(cacheHash)'
# # uncommit command below, and start infusion, it will print hash key of recipe
# $say $(hash)
# # this will write to you book
$data modify block ~ ~ ~ item.components."minecraft:writable_book_content".pages \
    append value {raw:'$(hash)'}