data modify storage ifsou:var running.logs \
    append value []

function ifsou:enhance/rushing_stream/get_nearby
# 附近有方块，递归获取
execute if data storage ifsou:var running.logs[-1][0] \
    run function ifsou:enhance/rushing_stream/next_layer