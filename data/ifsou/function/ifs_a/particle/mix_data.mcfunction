data modify storage ifsou:var running.Pos \
    set from block ~ ~ ~ \
    components."minecraft:custom_data"."ifsou:target"
data modify storage ifsou:var running.color \
    set from storage ifsou:var running.R.color