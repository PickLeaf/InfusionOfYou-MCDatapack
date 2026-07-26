execute as @e[distance=0..32,type=minecraft:fishing_bobber] \
    on origin \
    if entity @s[tag=IfsOU.TargetPlayer] \
    run return 1
return fail