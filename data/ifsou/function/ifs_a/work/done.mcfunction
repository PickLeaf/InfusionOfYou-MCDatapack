execute positioned ~ ~-2 ~ \
    run function ifsou:ifs_a/work/recipe/output \       
        with storage ifsou:var running.R

tag @s remove IfsOU.infusing
data modify entity @s data."ifsou:running" \
    set value {}