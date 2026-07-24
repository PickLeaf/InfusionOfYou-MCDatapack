execute store result score A IfsOU.Clac \
    run experience query @s levels
execute store result score B IfsOU.Clac \
    run experience query @s points
execute if score A IfsOU.Clac matches 0 \
    unless score B IfsOU.Clac matches 5.. \
    run return fail
experience add @s -5 points

data modify storage ifsou:var wundleCore.Moion \
    set from entity @s Pos
execute summon minecraft:marker \
    run function ifsou:wd_cr/gen_forward

data modify storage ifsou:var wundleCore.Owner \
    set from entity @s UUID
execute anchored eyes \ 
    summon minecraft:small_fireball \
    run function ifsou:wd_cr/shot