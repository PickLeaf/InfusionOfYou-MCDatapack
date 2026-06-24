# 将存储的命名牌名称修改进物品的"minecraft:item_model"组件
data modify block ~ ~ ~ item.components."minecraft:item_model" \
    set from entity @s data.data."ifsou:running".PhantomModel

playsound minecraft:entity.ender_pearl.throw block @a