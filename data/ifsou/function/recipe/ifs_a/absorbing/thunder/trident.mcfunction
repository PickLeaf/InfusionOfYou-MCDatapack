data modify storage ifsou:var running.tick \
    set value 3600
data modify entity @s Item \
    set from storage ifsou:var running.items[-1]