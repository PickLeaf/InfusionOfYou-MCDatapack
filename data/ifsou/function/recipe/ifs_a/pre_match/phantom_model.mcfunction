execute unless items block ~ ~ ~ container.0 \
    * \
    run return fail
# 如果命名牌没有命名则返回
execute unless data storage ifsou:var \
    running.items[{id:"minecraft:name_tag"}].components.\
    "minecraft:custom_name" \
    run return fail

data remove storage ifsou:var running.stop
# 存储命名牌的名称
data modify entity @s data."ifsou:running".PhantomModel \
    set from storage ifsou:var \
    running.items[{id:"minecraft:name_tag"}].components.\
    "minecraft:custom_name"