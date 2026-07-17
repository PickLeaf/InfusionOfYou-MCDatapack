# 依次获取上一层的方块的附近的方块
function ifsou:enhance/rushing_stream/get_nearby \
    with storage ifsou:var running.currentLayer[-1]
# 删除获取过附近的方块的（上一层）方块
data remove storage ifsou:var running.currentLayer[-1]
# 递归
execute if data storage ifsou:var running.currentLayer[-1] \
    run return run function ifsou:enhance/rushing_stream/next_layer_