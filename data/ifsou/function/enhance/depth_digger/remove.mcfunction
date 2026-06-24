tag @s add IfsOU.player
execute summon minecraft:item_display \
    run function ifsou:enhance/depth_digger/item_display
tag @s remove IfsOU.player

item modify entity @s armor.body ifsou:depth_digger/remove