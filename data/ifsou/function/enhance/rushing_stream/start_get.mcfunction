teleport @s ~ ~ ~
# 把原点存进去
execute store result storage ifsou:var \
    rushing_stream.log.x int 1 \
    run data get entity @s Pos[0]
execute store result storage ifsou:var \
    rushing_stream.log.y int 1 \
    run data get entity @s Pos[1]
execute store result storage ifsou:var \
    rushing_stream.log.z int 1 \
    run data get entity @s Pos[2]
data modify storage ifsou:var rushing_stream.alreayAdded \
    append from storage ifsou:var rushing_stream.log
# new一个列表存当前层的方块
data modify storage ifsou:var rushing_stream.logs \
    append value []
# 获取目标方块附近的原木方块
function ifsou:enhance/rushing_stream/get_nearby_
# 目标方块附近有原木方块，递归获取
execute if data storage ifsou:var rushing_stream.logs[-1][0] \
    run function ifsou:enhance/rushing_stream/next_layer

data remove storage ifsou:var rushing_stream.logs[-1]