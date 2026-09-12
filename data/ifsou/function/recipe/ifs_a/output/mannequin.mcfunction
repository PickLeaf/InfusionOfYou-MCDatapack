data modify storage ifsou:var running.targetEntity \
    set from entity @s data."ifsou:running".villagerUUID

execute positioned ~ ~-0.5 ~ \
    summon minecraft:mannequin \
    run function ifsou:recipe/ifs_a/output/mannequin/summon

playsound minecraft:entity.arrow.hit_player block @a[distance=0..32]
advancement grant @a[distance=0..32] only ifsou:mannequin