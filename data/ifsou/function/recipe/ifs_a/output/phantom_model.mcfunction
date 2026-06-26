# 将存储的命名牌名称修改进物品的"minecraft:item_model"组件
data modify block ~ ~ ~ item.components."minecraft:item_model" \
    set from entity @s data."ifsou:running".PhantomModel

# remove
data remove block ~ ~ ~ \
    item.components."minecraft:lore"[{"translate": "ifsou.infusion.PhantomModel"}]
item modify block ~ ~ ~ container.0 ifsou:enhance/phantom_model
data modify block ~ ~ ~ \
    item.components."minecraft:lore"[-1].extra \
    append from entity @s \
    data."ifsou:running".PhantomModel

playsound minecraft:entity.ender_pearl.throw block @a
advancement grant @a[distance=0..32] only ifsou:phantom_model

function ifsou:ifs_a/work/drop