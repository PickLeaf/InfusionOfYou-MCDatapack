# none rushing_stream enchantment tool in mainhand, return
execute if function ifsou:util/tool_use/no_enchant \
    on passengers \
    run return run \
        function ifsou:handler/kill_timer/tick
# player looked away
execute if function ifsou:util/tool_use/loked_away \
    on passengers \
    run return run \
        function ifsou:handler/kill_timer/tick

execute if block ~ ~ ~ #ifsou:after_break \
    run function ifsou:enhance/rushing_stream/breaked