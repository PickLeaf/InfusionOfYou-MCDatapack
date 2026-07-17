$execute if data storage ifsou:var \
    running.alreayAdded[{x:$(x),y:$(y),z:$(z)}] \
    run return fail
data remove storage ifsou:var running.had_log