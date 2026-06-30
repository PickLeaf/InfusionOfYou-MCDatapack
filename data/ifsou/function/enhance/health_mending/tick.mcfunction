execute unless items entity @s weapon.mainhand \
    *[minecraft:damage~{damage:{min:10}}] \
    run return fail
item modify entity @s weapon.mainhand ifsou:enhance/health_mending/repair
damage @s 1 minecraft:starve