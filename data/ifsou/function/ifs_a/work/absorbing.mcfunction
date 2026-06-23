# delay
scoreboard players remove @s IfsOU.Clac 1
execute if score @s IfsOU.Clac matches 1.. \
    run return fail

tag @s remove IfsOU.absorbing