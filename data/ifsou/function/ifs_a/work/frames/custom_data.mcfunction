data modify storage ifsou:var \
    running.custom_data.id set from storage ifsou:var \
    running.items[-1].components."minecraft:custom_data".id
# get count of item from previous frame
scoreboard players set A IfsOU.Clac 0
execute store result score A IfsOU.Clac \
    run function ifsou:ifs_a/work/get_item_count \
    with storage ifsou:var running.custom_data
# add one, and set back
scoreboard players add A IfsOU.Clac 1
function ifsou:ifs_a/work/set_item_count \
    with storage ifsou:var running.custom_data