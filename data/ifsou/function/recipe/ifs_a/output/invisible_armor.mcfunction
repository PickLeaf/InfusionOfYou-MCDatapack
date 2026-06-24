data modify storage ifsou:var running.fail \
    set value 1b
execute as @e[dx=2,dy=2,dz=2,\
    type=minecraft:armor_stand,limit=1] \
    run function ifsou:recipe/ifs_a/output/invisible_armor/armmor_stand
execute if data storage ifsou:var running.fail \
    run return run \
        function ifsou:ifs_a/work/fail

playsound item.shield.break block @a