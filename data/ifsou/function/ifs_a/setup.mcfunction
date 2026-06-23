# outline
function ifsou:ifs_a/schematic/lime_area
# place command block in world
setblock ~ ~ ~ \
    minecraft:repeating_command_block[facing=up]\
    {auto:1b, TrackOutput:0b}
# summon marker
# - store structure check func
data modify storage ifsou:var structure_check.x \
    set from block ~ ~ ~ x
data modify storage ifsou:var structure_check.y \
    set from block ~ ~ ~ y
data modify storage ifsou:var structure_check.z \
    set from block ~ ~ ~ z
data modify storage ifsou:var structure_check.func \
    set value "ifsou:ifs_a/structure_check"
# - summon
execute positioned ~ ~-2 ~ \
    summon minecraft:marker \
    run function ifsou:util/summon_marker
# store marker UUID
data modify block ~ ~ ~ \
    components."minecraft:custom_data"."ifsou:link_entity".marker.UUID \
    set from storage nutlet:var uuid.hex
# modified command in command block
function ifsou:ifs_a/set_command \
    with storage nutlet:var uuid
# - summon display entity
data modify storage nutlet:var schematic set value \
    {tick:0, transformation:{\
        scale:[1.4f, 1.4f, 1.4f], translation:[-0.7f, -0.6f, -0.7f]},\
    callback:"ifsou:util/get_hex_uuid",\
    bright:15, id:"minecraft:gold_block"}
function nutlet:-m/schematic/block
# store display UUID
data modify block ~ ~ ~ \
    components."minecraft:custom_data"."ifsou:link_entity".display.UUID \
    set from storage nutlet:var uuid.hex
# store target position of particle
execute summon minecraft:marker \
    run function ifsou:ifs_a/set_target
# clean
data remove storage nutlet:var uuid
# make some sound
playsound block.anvil.place player @s
# outer_left stairs!!!
setblock ~1 ~-1 ~1 \
    minecraft:polished_blackstone_stairs[facing=north,shape=outer_left]
setblock ~-1 ~-1 ~1 \
    minecraft:polished_blackstone_stairs[facing=east,shape=outer_left]
setblock ~1 ~-1 ~-1 \
    minecraft:polished_blackstone_stairs[facing=west,shape=outer_left]
setblock ~-1 ~-1 ~-1 \
    minecraft:polished_blackstone_stairs[facing=south,shape=outer_left]