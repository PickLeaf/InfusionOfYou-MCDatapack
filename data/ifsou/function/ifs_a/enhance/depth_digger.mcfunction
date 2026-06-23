execute store result score A IfsOU.Clac \
    run data get entity @s Pos[1]

scoreboard players remove A IfsOU.Clac 72

execute if score A IfsOU.Clac matches ..0 \
    run return run function ifsou:ifs_a/enhance/depth_digger/-1
execute if score A IfsOU.Clac matches 0.. \
    run function ifsou:ifs_a/enhance/depth_digger/1
