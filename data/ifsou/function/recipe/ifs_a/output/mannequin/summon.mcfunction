function ifsou:recipe/ifs_a/output/mannequin/2_villager \
    with storage ifsou:var running

data modify entity @s profile \
    set from storage ifsou:var running.PlayerName
data modify entity @s CustomName \
    set from storage ifsou:var running.PlayerName