execute positioned ~ ~-2 ~ \
    run function ifsou:ifs_a/work/recipe/output \       
        with storage ifsou:var running.R

summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:structure_void",count:1},Tags:["IfsOU.dropedItem"]}
execute as @e[dx=0,dy=0,dz=0,type=minecraft:item,tag=IfsOU.dropedItem] \
    run function ifsou:ifs_a/work/recipe/drop

tag @s remove IfsOU.infusing
item replace block ~ ~-2 ~ container.0 with minecraft:air
data modify entity @s data."ifsou:running" \
    set value {}