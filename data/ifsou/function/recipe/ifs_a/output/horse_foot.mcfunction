item modify block ~ ~ ~ container.0 ifsou:enhance/horse_foot
data modify block ~ ~ ~ \
    item.components."minecraft:custom_data"."ifsou:enhance" \
    append value "ifsou:horse_foot"

playsound minecraft:entity.horse.angry block @a