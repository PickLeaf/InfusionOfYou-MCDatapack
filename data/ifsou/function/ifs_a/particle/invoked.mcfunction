scoreboard players remove @s IfsOU.Clac 1
execute if score @s IfsOU.Clac matches ..0 \
    run function ifsou:ifs_a/particle/kill \
        with entity @s data."ifsou:display"

data modify storage ifsou:var running.particle \
    set from entity @s data."ifsou:particle"
function ifsou:ifs_a/particle/show \
    with storage ifsou:var running.particle