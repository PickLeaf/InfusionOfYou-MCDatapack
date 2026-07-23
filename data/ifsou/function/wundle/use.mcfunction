execute anchored eyes \
    positioned ^ ^ ^0 \
    if entity \
    @s[advancements={ifsou:func/wundle_use=true}] \
    run return run \
        function ifsou:wundle/using

execute anchored eyes \
    positioned ^ ^ ^0 \
    if entity \
    @s[tag=IfsOU.LastUsingWundle] \
    run function ifsou:wundle/use_end