$execute as @e[distance=0..,tag=IfsOU.TunnelBoring,\
    nbt={data:{"ifsou:player":{UUID:'$(hex)'}}}] \
    run function ifsou:enhance/tunnel_boring/destroy