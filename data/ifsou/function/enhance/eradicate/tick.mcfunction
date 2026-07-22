# none eradicate enchantment tool in mainhand, return
execute if function ifsou:util/tool_use/no_enchant \
    run return run \
        kill @s
# player looked away
execute if function ifsou:util/tool_use/loked_away \
    run return run \
        kill @s

execute if block ~ ~ ~ #ifsou:after_break \
    run function ifsou:enhance/eradicate/breaked \
        with entity @s data."ifsou:player"