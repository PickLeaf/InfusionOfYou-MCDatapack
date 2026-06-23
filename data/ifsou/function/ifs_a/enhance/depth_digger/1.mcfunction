execute store result storage ifsou:var depth_digger float -0.0078125 \
    run scoreboard players get A IfsOU.Clac

item modify entity @s weapon.mainhand ifsou:depth_digger/update
data remove storage ifsou:var depth_digger