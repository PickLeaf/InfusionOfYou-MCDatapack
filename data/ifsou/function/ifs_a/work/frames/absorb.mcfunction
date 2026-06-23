# return if already absorb
execute unless data storage ifsou:var running.stop \
    run return fail
# match id
execute if function ifsou:ifs_a/work/frames/modify \
    run return fail
# do absorb
data remove storage ifsou:var running.stop
item replace entity @s container.0 with minecraft:air
# absorbing time in ticks
data modify storage ifsou:var running.tick \
    set value 20
# invoke recipe func
execute if data storage ifsou:var running.R.absorbing \
    run function ifsou:ifs_a/work/recipe/absorbing \
        with storage ifsou:var running.R
# show particle
execute if entity @p[distance=0..32] \
    at @s rotated as @s \
    run function ifsou:ifs_a/particle/start