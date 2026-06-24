# miss punish
scoreboard players set @s IfsOU.Clac 200
# show item missed
execute unless entity @p[distance=0..32] \
    run return fail
data modify storage nutlet:var schematic set value \
    {tick:200, dropData:1b}
data modify storage nutlet:var schematic.id \
    set from storage ifsou:var running.items[-1].id
data modify storage nutlet:var schematic.callback \
    set value "ifsou:ifs_a/work/frames/vertical"
data modify storage nutlet:var schematic.component \
    set from storage ifsou:var running.items[-1].components
execute if data storage nutlet:var schematic.component \
    run data modify storage nutlet:var schematic.hasComponent \
        set value 1b
execute positioned ~ ~1.5 ~ \
    run function nutlet:-m/schematic/item
# release data
# data remove storage nutlet:var schematic