execute \
    unless entity @p \
    run return \
        run schedule function ifsou:print/info 2t
function ifsou:print/version
function ifsou:print/link
function ifsou:print/error
function ifsou:print/nutlet
data remove storage ifsou:print nutlet
function ifsou:print/macro \
    with storage ifsou:print cmd
data remove storage ifsou:print cmd