data modify entity @s data."ifsou:tunnel_boring".owner.UUID \
    set from storage ifsou:var running.owner
teleport @s ~ ~ ~ ~ ~
tag @s add IfsOU.TunnelBoring
# block display entity
execute summon minecraft:block_display \
    run function ifsou:ifs_a/enhance/tunnel_boring/display
data modify entity @s data."ifsou:tunnel_boring".display.UUID \
    set from storage nutlet:var uuid.hex
