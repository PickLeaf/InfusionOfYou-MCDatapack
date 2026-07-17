execute unless block ~ ~ ~ #ifsou:natural_logs \ 
    run return fail
execute if predicate ifsou:is_sneaking \
    run return fail

execute align xyz \
    as @e[dx=0,dy=0,dz=0,tag=IfsOU.RushingStream] \
    on passengers \
    if entity @s[tag=IfsOU.KillTimer] \
    run return run \
        scoreboard players set @s Nutlet.Clac 600

data modify storage nutlet:var tick set value \
    {handler: "ifsou:enhance/rushing_stream/tick",\
    callback: "ifsou:enhance/rushing_stream/callback"}
function nutlet:-m/tick