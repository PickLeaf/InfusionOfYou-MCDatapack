# fill enchantment in body
function nutlet:-m/fill_baubles
item modify entity @s armor.body ifsou:enhance/depth_digger
# get Y
execute store result score A IfsOU.Clac \
    run data get entity @s Pos[1]

scoreboard players remove A IfsOU.Clac 72
# 在72格以下, -0.0333333333 = -1/3
execute if score A IfsOU.Clac matches ..0 \
    store result storage ifsou:var depth_digger float -0.0333333333 \
    run scoreboard players get A IfsOU.Clac
# 在72格以上, -0.0078125= -1/128
execute unless score A IfsOU.Clac matches ..0 \
    store result storage ifsou:var depth_digger float -0.0078125 \
    run scoreboard players get A IfsOU.Clac

item modify entity @s armor.body ifsou:depth_digger/update
data remove storage ifsou:var depth_digger