execute unless data storage ifsou:var \
    running.items[{id:"minecraft:lingering_potion"}].components.\
    "minecraft:potion_contents"{potion:"minecraft:strong_healing"} \
    run return fail

execute unless entity @e[type=minecraft:villager,dx=0,dy=1,dz=0,limit=1] \
    run return run \
        function ifsou:recipe/ifs_a/pre_match/mannequin/fail1
execute as @e[type=minecraft:villager,dx=0,dy=1,dz=0,limit=1] \
    unless data entity @s CustomName \
    run return run \
        function ifsou:recipe/ifs_a/pre_match/mannequin/fail2

data remove storage ifsou:var running.stop
data remove storage ifsou:var running.targetEntity
execute as @e[type=minecraft:villager,dx=0,dy=1,dz=0] \
    run function ifsou:recipe/ifs_a/pre_match/mannequin/tag_villager
# store uuid of villager
data modify entity @s data."ifsou:running".villagerUUID \
    set from storage ifsou:var \
    running.targetEntity
