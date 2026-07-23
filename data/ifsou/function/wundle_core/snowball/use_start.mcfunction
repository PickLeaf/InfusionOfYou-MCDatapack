data modify storage ifsou:var running \
    set from entity @s SelectedItem
tag @s add IfsOU.TargetPlayer
execute summon minecraft:item_display \
    run function ifsou:wundle_core/snowball/item_display
tag @s remove IfsOU.TargetPlayer