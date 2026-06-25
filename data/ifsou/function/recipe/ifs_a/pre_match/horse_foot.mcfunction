execute if items block ~ ~ ~ container.0 \
    *[minecraft:attribute_modifiers~{modifiers:{contains:[{id:"ifsou:horse_foot"}]}}] \
    run return fail
execute unless items block ~ ~ ~ container.0 #minecraft:foot_armor \
    run return fail

execute positioned ~-6.5 ~-0.5 ~-6.5 \
    as @n[type=#minecraft:can_wear_horse_armor,dx=12,dy=2,dz=12] \
    run function ifsou:recipe/ifs_a/kill_ats