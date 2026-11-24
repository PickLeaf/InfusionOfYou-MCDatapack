execute unless block ~ ~ ~ #ifsou:mineable/eradicate \
    run return fail
execute if predicate ifsou:is_sneaking \
    run return fail
# get player UUID
function ifsou:util/get_hex_uuid
# kill other marker
function ifsou:enhance/eradicate/kill \
    with storage nutlet:var uuid
#
data modify storage nutlet:var tick set value \
    {handler: "ifsou:enhance/eradicate/tick",\
    callback: "ifsou:enhance/eradicate/callback"}
function nutlet:-m/tick