# # data."ifsou:running"
# items: 输入的原料
# R: 配方

# make sure there a pot under altar
execute unless block ~ ~-2 ~ minecraft:decorated_pot \
    run return run function ifsou:ifs_a/work/fail
# if absrobing item
execute if entity @s[tag=IfsOU.absorbing] \
    run return \
        run function ifsou:ifs_a/work/absorbing
# load data
data modify storage ifsou:var running \
    set from entity @s data."ifsou:running"
# output item if done
execute unless data storage ifsou:var running.items[-1] \
    run return run \
        function ifsou:ifs_a/work/done
# absorb item from frame
data modify storage ifsou:var running.absorbingItem \
    set from storage ifsou:var running.items[-1].id
# flag
data modify storage ifsou:var running.stop \
    set value 1b
# - particle pos
execute if entity @p[distance=0..32] \
    run function ifsou:ifs_a/particle/mix_data
# as item frame
execute positioned ~-6.5 ~-2.5 ~-6.5 \
    as @e[type=#ifsou:item_frame,dx=12,dy=2,dz=12] \
    if items entity @s container.0 * \
    run function ifsou:ifs_a/work/frames/absorb
# if item miss
execute if data storage ifsou:var running.stop \
    run return run \
        function ifsou:ifs_a/work/frames/miss_item
# absorbing time in ticks
execute store result score @s IfsOU.Clac \
    run data get storage ifsou:var running.tick
tag @s add IfsOU.absorbing
# update back
data remove entity @s data."ifsou:running".items[-1]
