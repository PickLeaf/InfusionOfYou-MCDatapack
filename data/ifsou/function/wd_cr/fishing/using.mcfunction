data modify storage ifsou:var running \
    set from entity @s SelectedItem

tag @s add IfsOU.TargetPlayer
data modify storage ifsou:var running.seconds \
        set value 0.01
execute as @e[distance=0..32,type=minecraft:fishing_bobber] \
    at @s \
    if block ~ ~0.4 ~ minecraft:water \
    on origin \
    if entity @s[tag=IfsOU.TargetPlayer] \
    run data modify storage ifsou:var running.seconds \
        set value 0.3
execute unless entity \
    @e[distance=0..32,type=minecraft:fishing_bobber] \
    run data modify storage ifsou:var running.seconds \
        set value 0.3
execute summon minecraft:item_display \
    run function ifsou:wd_cr/fishing/item_display
tag @s remove IfsOU.TargetPlayer