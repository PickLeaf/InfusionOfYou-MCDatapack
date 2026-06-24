# get player UUID
data modify storage nutlet:var uuid.array \
    set from entity @s UUID
function nutlet:-m/hex_uuid
data modify storage ifsou:var running.owner \
    set from storage nutlet:var uuid.hex
# kill other marker
function ifsou:enhance/tunnel_boring/kill \
    with storage ifsou:var running
#
data modify storage nutlet:var tick set value \
    {handler: "ifsou:enhance/tunnel_boring/tick",\
    callback: "ifsou:enhance/tunnel_boring/callback"}
function nutlet:-m/tick