data modify entity @s data."ifsou:particle".Pos \
    set from storage ifsou:var running.Pos
data modify entity @s data."ifsou:particle".color \
    set from storage ifsou:var running.color
data modify entity @s data."ifsou:display".UUID \
    set from storage ifsou:var running.displayUUID
execute store result score @s IfsOU.Clac \
    run data get storage ifsou:var running.tick