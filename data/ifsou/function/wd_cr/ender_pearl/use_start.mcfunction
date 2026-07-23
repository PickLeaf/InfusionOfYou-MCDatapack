execute store result score A IfsOU.Clac \
    run experience query @s levels
execute unless score A IfsOU.Clac matches 1.. \
    run return fail
execute store result score B IfsOU.Clac \
    run experience query @s points
execute if score A IfsOU.Clac matches 1 \
    unless score B IfsOU.Clac matches 3.. \
    run return fail
experience add @s -10 points

data modify storage ifsou:var running \
    set from entity @s SelectedItem
tag @s add IfsOU.TargetPlayer
execute summon minecraft:item_display \
    run function ifsou:wd_cr/ender_pearl/item_display
tag @s remove IfsOU.TargetPlayer