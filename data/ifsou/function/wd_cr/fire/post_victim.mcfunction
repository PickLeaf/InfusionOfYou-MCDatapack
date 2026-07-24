execute if score A IfsOU.Clac matches 0 \
    run return fail

execute store result score A IfsOU.Clac \
    run data get entity @s Fire
scoreboard players add A IfsOU.Clac 100
execute store result entity @s Fire short 1 \
    run scoreboard players get A IfsOU.Clac