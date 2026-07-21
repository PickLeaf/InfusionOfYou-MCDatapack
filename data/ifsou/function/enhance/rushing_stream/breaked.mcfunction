execute unless data entity @s data."ifsou:running".logs[0] \
    on passengers \
    if entity @s[tag=IfsOU.KillTimer] \
    run return run \
        function ifsou:handler/kill_timer/tick

function ifsou:enhance/rushing_stream/copy_log \
    with entity @s data."ifsou:running".logs[-1][-1]
data remove entity @s data."ifsou:running".logs[-1][-1]

execute unless data entity @s data."ifsou:running".logs[-1][0] \
    run data remove entity @s data."ifsou:running".logs[-1]
