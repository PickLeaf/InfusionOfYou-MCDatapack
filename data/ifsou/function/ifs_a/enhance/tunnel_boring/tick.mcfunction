execute if function ifsou:ifs_a/enhance/tunnel_boring/check_player \
    run return run function ifsou:ifs_a/enhance/tunnel_boring/destroy

execute if block ~ ~ ~ #ifsou:after_break \
    run function ifsou:ifs_a/enhance/tunnel_boring/breakss \
        with entity @s data."ifsou:tunnel_boring".owner