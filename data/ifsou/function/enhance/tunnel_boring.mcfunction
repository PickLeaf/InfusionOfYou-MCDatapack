execute unless block ~ ~ ~ #minecraft:mineable/pickaxe \
    run return fail
execute if predicate ifsou:is_sneaking \
    run return fail

function nutlet:-m/facing/entity_axis_align \
        {handler:"ifsou:enhance/tunnel_boring/facing"}