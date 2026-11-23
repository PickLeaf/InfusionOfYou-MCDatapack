$execute if data storage ifsou:var \
    rushing_stream.alreayAdded[{x:$(x),y:$(y),z:$(z)}] \
    run return fail
data remove storage ifsou:var rushing_stream.had_log