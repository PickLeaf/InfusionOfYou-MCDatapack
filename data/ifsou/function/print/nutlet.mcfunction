data modify storage ifsou:print cmd.nutlet \
    set value {"text":""}
function nutlet:get_version {storage:"ifsou:print",path:"nutlet"}
execute if data storage ifsou:print nutlet \
    run return run \
        function ifsou:print/nutlet_exists
data modify storage ifsou:print cmd.nutlet \
    set value {"translate": "ifsou.missing_nutlet",\
    "fallback": "(Missing Nutlet Datapack)",\
    "color":"red"}