data modify storage nutlet:var tick set value \
    {handler: "ifsou:ifs_a/particle/invoked",\
    callback: "ifsou:ifs_a/particle/callback"}
execute summon minecraft:item_display \
    run function ifsou:ifs_a/particle/item_display
function nutlet:-m/tick