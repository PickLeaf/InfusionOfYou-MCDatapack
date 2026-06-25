execute if items block ~ ~ ~ container.0 \
    *[minecraft:custom_data~{"ifsou:enhance":["ifsou:horse_foot"]}] \
    run return run \
        function ifsou:ifs_a/work/fail
execute unless items block ~ ~ ~ container.0 #minecraft:foot_armor \
    run return run \
        function ifsou:ifs_a/work/fail
    
item modify block ~ ~ ~ container.0 ifsou:enhance/horse_foot

playsound minecraft:entity.horse.angry block @a