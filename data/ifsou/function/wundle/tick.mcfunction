execute if items entity @s weapon.offhand \
    *[minecraft:enchantments~[{\
        enchantments:"ifsou:wundle",\
        levels:{min:1}}]] \
    run return run \
        function ifsou:wundle/hand_swapped

execute if entity \
    @s[advancements={ifsou:func/wundle_use=true}] \
    anchored eyes \
    positioned ^ ^ ^0 \
    run return run \
        function ifsou:wundle/using

execute if entity \
    @s[tag=IfsOU.WundlePrepareEndUse] \
    anchored eyes \
    positioned ^ ^ ^0 \
    run function ifsou:wundle/use_end
execute if entity \
    @s[tag=IfsOU.LastUsingWundle] \
    run tag @s add IfsOU.WundlePrepareEndUse