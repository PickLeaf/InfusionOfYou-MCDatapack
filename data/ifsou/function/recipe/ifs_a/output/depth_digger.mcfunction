item modify block ~ ~ ~ container.0 ifsou:enhance/depth_digger
data modify block ~ ~ ~ \
    item.components."minecraft:custom_data"."ifsou:enhance" \
    append value "ifsou:depth_digger"

playsound minecraft:entity.item.break block @a
playsound minecraft:block.stone.break block @a