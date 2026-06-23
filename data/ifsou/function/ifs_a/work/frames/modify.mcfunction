data modify storage ifsou:var running.modify \
    set from storage ifsou:var running.absorbingItem
data modify storage ifsou:var running.frameItem \
    set from entity @s Item

execute if data storage ifsou:var \
    running.frameItem.components."minecraft:custom_data".id \
    run return run data modify storage ifsou:var running.modify \
        set from storage ifsou:var running.frameItem.components."minecraft:custom_data".id
return run data modify storage ifsou:var running.modify \
    set from storage ifsou:var running.frameItem.id