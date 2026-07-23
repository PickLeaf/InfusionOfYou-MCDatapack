tag @s remove IfsOU.absorbing
tag @s remove IfsOU.infusing
data modify entity @s data."ifsou:running" \
    set value {}

playsound block.beacon.deactivate block @a[distance=0..32]