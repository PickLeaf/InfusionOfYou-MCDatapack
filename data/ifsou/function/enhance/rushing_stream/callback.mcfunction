tag @s add IfsOU.RushingStream
# kill_timer
tag @s add IfsOU.killTarget
data modify storage nutlet:var tick set value \
    {handler: "ifsou:handler/kill_timer/tick",\
    callback: "ifsou:handler/kill_timer/new",\
    timer_tick: 600}
data modify storage nutlet:var tick.UUID \
    set from entity @s UUID
function nutlet:-m/tick
#
data modify storage ifsou:var running \
    set value {logs:[],log:{}}

execute align xyz run \
    function ifsou:enhance/rushing_stream/start_get
data modify entity @s data."ifsou:running".logs \
    set from storage ifsou:var running.logs
teleport @s ~ ~ ~

data remove storage ifsou:var running