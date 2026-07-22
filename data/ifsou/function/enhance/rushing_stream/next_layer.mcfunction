# 获取上一层的方块
data modify storage ifsou:var running.currentLayer \
    set from storage ifsou:var running.logs[-1]
# new一个列表存当前层的方块
data modify storage ifsou:var running.logs \
    append value []
# 依次获取上一层的方块的附近的方块
function ifsou:enhance/rushing_stream/next_layer_
# 当前层无方块，返回
execute unless data storage ifsou:var running.logs[-1][0] \
    run return fail
# 超过16格远，返回
execute if data storage ifsou:var running.logs[16] \
    run return fail
# 还有方块，递归获取下一层
function ifsou:enhance/rushing_stream/next_layer