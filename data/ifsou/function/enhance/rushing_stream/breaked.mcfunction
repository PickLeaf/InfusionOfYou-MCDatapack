# load data
data modify storage ifsou:var running \
    set from entity @s data."ifsou:running"

function ifsou:enhance/rushing_stream/copy_log \
    with storage ifsou:var running.logs[-1][-1]
data remove storage ifsou:var running.logs[-1][-1]

execute unless data storage ifsou:var running.logs[-1][0] \
    run data remove storage ifsou:var running.logs[-1]

execute unless data storage ifsou:var running.logs[0] \
    on passengers \
    if entity @s[tag=IfsOU.KillTimer] \
    run scoreboard players set @s Nutlet.Clac 0

data modify entity @s data."ifsou:running".logs \
    set from storage ifsou:var running.logs