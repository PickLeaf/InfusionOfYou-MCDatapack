tag @s add IfsOU.RushingStream
# store player UUID
data modify entity @s data."ifsou:player".UUID \
    set from storage nutlet:var uuid.hex
# enchantment will check
data modify entity @s data."ifsou:player".enchantments \
    set value [{\
        enchantments: "ifsou:rushing_stream",\
        levels: {min: 1}}]
# kill_timer
tag @s add IfsOU.killTarget
data modify storage nutlet:var tick set value \
    {handler: "ifsou:handler/kill_timer/tick",\
    callback: "ifsou:handler/kill_timer/new",\
    timer_tick: 600}
function nutlet:-m/tick
# 生成原木列表 generate list of logs
data modify storage ifsou:var running \
    set value {logs:[],log:{}}

execute align xyz run \
    function ifsou:enhance/rushing_stream/start_get
data modify entity @s data."ifsou:running".logs \
    set from storage ifsou:var running.logs
teleport @s ~ ~ ~

data remove storage ifsou:var running