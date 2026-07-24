scoreboard players set A IfsOU.Clac 1
execute store result score A IfsOU.Clac \
    run experience query @s levels
execute unless score A IfsOU.Clac matches 1.. \
    run return run \
        scoreboard players set A IfsOU.Clac 0
execute store result score B IfsOU.Clac \
    run experience query @s points
execute if score A IfsOU.Clac matches 1 \
    unless score B IfsOU.Clac matches 3.. \
    run return run \
        scoreboard players set A IfsOU.Clac 0
experience add @s -10 points