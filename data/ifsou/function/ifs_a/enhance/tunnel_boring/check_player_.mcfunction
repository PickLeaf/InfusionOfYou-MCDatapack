$execute \
    facing entity $(UUID) eyes \
    positioned ^ ^ ^2 \
    rotated as $(UUID) \
    positioned ^ ^ ^2 \
    if entity @s[distance=0..1] \
    run return fail
return 1