teleport ^ ^ ^100

execute store result score B IfsOU.Clac \
    run data get storage ifsou:var wundleCore.Moion[0]
execute store result score A IfsOU.Clac \
    run data get entity @s Pos[0]
scoreboard players operation A IfsOU.Clac -= B IfsOU.Clac
execute store result storage ifsou:var wundleCore.Moion[0] double 0.01 \
    run scoreboard players get A IfsOU.Clac

execute store result score B IfsOU.Clac \
    run data get storage ifsou:var wundleCore.Moion[1]
execute store result score A IfsOU.Clac \
    run data get entity @s Pos[1]
scoreboard players operation A IfsOU.Clac -= B IfsOU.Clac
execute store result storage ifsou:var wundleCore.Moion[1] double 0.01 \
    run scoreboard players get A IfsOU.Clac

execute store result score B IfsOU.Clac \
    run data get storage ifsou:var wundleCore.Moion[2]
execute store result score A IfsOU.Clac \
    run data get entity @s Pos[2]
scoreboard players operation A IfsOU.Clac -= B IfsOU.Clac
execute store result storage ifsou:var wundleCore.Moion[2] double 0.01 \
    run scoreboard players get A IfsOU.Clac

kill @s