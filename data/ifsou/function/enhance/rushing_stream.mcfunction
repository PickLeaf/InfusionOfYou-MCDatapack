execute unless block ~ ~ ~ #ifsou:mineable/rushing_stream \ 
    run return fail
execute if predicate ifsou:is_sneaking \
    run return fail

execute align xyz \
    as @e[dx=0,dy=0,dz=0,tag=IfsOU.RushingStream] \
    on passengers \
    if entity @s[tag=IfsOU.KillTimer] \
    run return run \
        scoreboard players set @s Nutlet.Clac 600
# 传递玩家UUID
function ifsou:util/get_hex_uuid
# 放置tick实体
data modify storage nutlet:var tick set value \
    {handler: "ifsou:enhance/rushing_stream/tick",\
    callback: "ifsou:enhance/rushing_stream/callback"}
function nutlet:-m/tick