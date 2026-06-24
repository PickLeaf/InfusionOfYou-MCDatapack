data modify storage ifsou:var running.absorbingItem \
    set from storage ifsou:var running.items[-1]
return run data modify storage ifsou:var running.absorbingItem \
    set from entity @s Item