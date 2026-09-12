data modify storage nutlet:var uuid.array \
    set from entity @s UUID
function nutlet:-m/hex_uuid
data modify storage ifsou:var running.targetEntity \
    set from storage nutlet:var uuid.hex