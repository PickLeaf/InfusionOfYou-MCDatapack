teleport @s ~ ~ ~
# 把原点存进去
execute store result storage ifsou:var \
    running.log.x int 1 \
    run data get entity @s Pos[0]
execute store result storage ifsou:var \
    running.log.y int 1 \
    run data get entity @s Pos[1]
execute store result storage ifsou:var \
    running.log.z int 1 \
    run data get entity @s Pos[2]
data modify storage ifsou:var running.alreayAdded \
    append from storage ifsou:var running.log
# new一个列表存当前层的方块
data modify storage ifsou:var running.logs \
    append value []
# 
function ifsou:enhance/rushing_stream/get_nearby_
# 附近有方块，递归获取
execute if data storage ifsou:var running.logs[-1][0] \
    run function ifsou:enhance/rushing_stream/next_layer

data remove storage ifsou:var running.logs[-1]