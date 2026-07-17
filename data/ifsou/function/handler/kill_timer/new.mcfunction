execute store result score @s Nutlet.Clac \
    run data get storage nutlet:var tick.timer_tick
ride @s mount @n[distance=0..1,tag=IfsOU.killTarget]
execute on vehicle \
    run tag @s remove IfsOU.killTarget
tag @s add IfsOU.KillTimer