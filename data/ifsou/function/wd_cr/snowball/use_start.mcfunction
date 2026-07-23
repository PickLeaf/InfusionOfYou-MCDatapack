effect give @s minecraft:hunger 1 0

data modify storage ifsou:var running \
    set from entity @s SelectedItem
tag @s add IfsOU.TargetPlayer
execute summon minecraft:item_display \
    run function ifsou:wd_cr/snowball/item_display
tag @s remove IfsOU.TargetPlayer