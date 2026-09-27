function ifsou:recipe/ifs_a/output/mannequin/2_villager \
    with storage ifsou:var running

data modify entity @s profile \
    set from storage ifsou:var running.PlayerName
data modify entity @s CustomName \
    set from storage ifsou:var running.PlayerName

tag @s add IfsOU.rideTarget
data modify storage nutlet:var tick \
    set value {\
        handler: "ifsou:handler/mannequin/tick",\
        callback: "ifsou:handler/mannequin/callback"}
function nutlet:-m/tick
tag @s remove IfsOU.rideTarget