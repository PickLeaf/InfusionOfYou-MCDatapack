execute unless items block ^ ^ ^-1 container.0 * \
    run return fail

item replace entity @s container.0 \
    from block ^ ^ ^-1 container.0
item modify block ^ ^ ^-1 container.0 \
    ifsou:minus_1