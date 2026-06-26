summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:structure_void",count:1},Tags:["IfsOU.dropedItem"]}
execute as @e[dx=0,dy=1,dz=0,type=minecraft:item,tag=IfsOU.dropedItem] \
    run function ifsou:ifs_a/work/recipe/drop
    