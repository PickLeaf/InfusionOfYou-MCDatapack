execute store result score A IfsOU.Clac \
    run experience query @s levels
execute store result score B IfsOU.Clac \
    run experience query @s points
execute if score A IfsOU.Clac matches 0 \
    unless score B IfsOU.Clac matches 4.. \
    run return fail
experience add @s -4 points

data modify storage ifsou:var running \
    set from entity @s SelectedItem
tag @s add IfsOU.TargetPlayer
execute summon minecraft:item_display \
    run function ifsou:wd_cr/wind_charge/item_display
tag @s remove IfsOU.TargetPlayer