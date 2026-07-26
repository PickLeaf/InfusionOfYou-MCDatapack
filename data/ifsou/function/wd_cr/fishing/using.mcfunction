data modify storage ifsou:var running \
    set from entity @s SelectedItem

tag @s add IfsOU.TargetPlayer
execute as @e[distance=0..32,type=minecraft:fishing_bobber] \
    at @s \
    if block ~ ~0.4 ~ minecraft:water \
    on origin \
    if entity @s[tag=IfsOU.TargetPlayer] \
    at @s \
    summon minecraft:item_display \
    run function ifsou:wd_cr/fishing/item_display
execute unless function ifsou:wd_cr/fishing/has_boober \
    summon minecraft:item_display \
    run function ifsou:wd_cr/fishing/item_display
tag @s remove IfsOU.TargetPlayer