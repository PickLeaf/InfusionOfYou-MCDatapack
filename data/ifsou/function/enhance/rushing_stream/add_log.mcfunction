teleport @s ~ ~ ~
execute store result storage ifsou:var \
    rushing_stream.log.x int 1 \
    run data get entity @s Pos[0]
execute store result storage ifsou:var \
    rushing_stream.log.y int 1 \
    run data get entity @s Pos[1]
execute store result storage ifsou:var \
    rushing_stream.log.z int 1 \
    run data get entity @s Pos[2]
# 测验是否已加入logs原木列表
data modify storage ifsou:var rushing_stream.had_log \
    set value 1b
function ifsou:enhance/rushing_stream/had_log \
    with storage ifsou:var rushing_stream.log
execute if data storage ifsou:var rushing_stream.had_log \
    run return run \
        data remove storage ifsou:var rushing_stream.had_log
# 未加入则加入
data modify storage ifsou:var rushing_stream.alreayAdded \
    append from storage ifsou:var rushing_stream.log
data modify storage ifsou:var rushing_stream.logs[-1] \
    append from storage ifsou:var rushing_stream.log