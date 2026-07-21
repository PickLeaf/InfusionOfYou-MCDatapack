tag @s add IfsOU.RushingStream
# kill_timer
tag @s add IfsOU.killTarget
data modify storage nutlet:var tick set value \
    {handler: "ifsou:handler/kill_timer/tick",\
    callback: "ifsou:handler/kill_timer/new",\
    timer_tick: 600}
function nutlet:-m/tick
# 
data modify entity @s data."ifsou:running".owner.UUID \
    set from storage nutlet:var uuid.hex
# 生成原木列表
data modify storage ifsou:var running \
    set value {logs:[],log:{}}

execute align xyz run \
    function ifsou:enhance/rushing_stream/start_get
data modify entity @s data."ifsou:running".logs \
    set from storage ifsou:var running.logs
teleport @s ~ ~ ~

data remove storage ifsou:var running