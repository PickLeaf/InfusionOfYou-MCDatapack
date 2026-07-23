# # data."ifsou:trigger"
# cacheHash: 配方哈希
# items: 输入的原料
# R: 配方

tag @s add IfsOU.triggered
# get cached recipe hash
data modify storage ifsou:var running \
    set from entity @s data."ifsou:trigger"
# get item from item frame
execute positioned ~-6.5 ~-0.5 ~-6.5 \
    as @e[type=#ifsou:item_frame,dx=12,dy=2,dz=12] \
    at @s \
    run function ifsou:ifs_a/work/frames/hash
# chechk cached recipe and re-get
execute if function ifsou:ifs_a/work/recipe/cache \
    if function ifsou:ifs_a/work/recipe/get \
    run return fail
# do pre-matahc of recipe
data modify storage ifsou:var running.stop \
    set value 1b
function ifsou:ifs_a/work/recipe/pre_match \
    with storage ifsou:var running.R
execute if data storage ifsou:var running.stop \
    run return fail
# # start infusion
# mix data
data modify entity @s data."ifsou:running".items \
    set from storage ifsou:var running.items
data modify entity @s data."ifsou:running".R \
    set from storage ifsou:var running.R
# noise
playsound item.armor.equip_generic block @a[distance=0..32]
tag @s add IfsOU.infusing