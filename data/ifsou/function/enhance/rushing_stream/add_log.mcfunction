teleport @s ~ ~ ~
execute store result storage ifsou:var \
    running.log.x int 1 \
    run data get entity @s Pos[0]
execute store result storage ifsou:var \
    running.log.y int 1 \
    run data get entity @s Pos[1]
execute store result storage ifsou:var \
    running.log.z int 1 \
    run data get entity @s Pos[2]

data modify storage ifsou:var running.had_log \
    set value 1b
function ifsou:enhance/rushing_stream/had_log \
    with storage ifsou:var running.log
execute if data storage ifsou:var running.had_log \
    run return run \
        data remove storage ifsou:var running.had_log

data modify storage ifsou:var running.alreayAdded \
    append from storage ifsou:var running.log
data modify storage ifsou:var running.logs[-1] \
    append from storage ifsou:var running.log