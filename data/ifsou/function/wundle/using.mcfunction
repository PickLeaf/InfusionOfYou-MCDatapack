advancement revoke @s only ifsou:func/wundle_use

tag @s add IfsOU.WundlerUser
execute summon minecraft:item_display \
    run function ifsou:wundle/return_core
tag @s remove IfsOU.WundlerUser

execute unless entity \
    @s[tag=IfsOU.LastUsingWundle] \
    run return run \
        function ifsou:wundle/use_start



tag @s add IfsOU.LastUsingWundle