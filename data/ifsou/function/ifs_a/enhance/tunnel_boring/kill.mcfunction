$execute as @e[distance=0..,tag=IfsOU.TunnelBoring,\
    nbt={data:{"ifsou:tunnel_boring":{owner:{UUID:'$(owner)'}}}}] \
    run function ifsou:ifs_a/enhance/tunnel_boring/destroy