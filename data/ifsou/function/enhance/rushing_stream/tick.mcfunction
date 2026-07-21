data modify storage ifsou:var running \
    set value {stop:1b}

function ifsou:enhance/rushing_stream/to_player \
    with entity @s data."ifsou:running".owner
# 主手不是奔流斧, 销毁返回
execute unless data storage ifsou:var running.stop \
    on passengers \
    run return run \
        function ifsou:handler/kill_timer/tick

execute if block ~ ~ ~ #ifsou:after_break \
    run function ifsou:enhance/rushing_stream/breaked