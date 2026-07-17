execute store result storage ifsou:var horse_foot.last int 1 \
    run scoreboard players get @s IfsOU.Clac

execute store result storage ifsou:var horse_foot.now int 1 \
    run time query gametime

return run data modify storage ifsou:var horse_foot.last \
    set from storage ifsou:var horse_foot.now