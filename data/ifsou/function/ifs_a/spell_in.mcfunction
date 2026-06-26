execute unless data storage nutlet:var {caller:"hit_block"} \
    run return fail

advancement grant @s only ifsou:nutlet/spell

execute if data entity @s \
    SelectedItem.components."minecraft:writable_book_content".pages[{raw:"help"}] \
    run return run \
        function ifsou:ifs_a/sub/help
execute if data entity @s \
    SelectedItem.components."minecraft:writable_book_content".pages[{raw:"recipe"}] \
    run return run \
        function ifsou:ifs_a/sub/recipe

execute if block ~ ~ ~ minecraft:repeating_command_block \
    run return run \
        function ifsou:ifs_a/schematic/lime_area

execute unless block ~ ~ ~ minecraft:gold_block \
    run return run \
        tellraw @s \
            {"translate":"ifsou.info.wrong_block",\
            "bold":true, "color":"red", \
            "with":[\
                {"translate":"block.minecraft.gold_block"},\
                {"translate":"ifsou.machine.IfsA.name"}]}

execute if predicate ifsou:ifs_a/install \
    run return run \
        function ifsou:ifs_a/setup

execute align xyz if entity \
    @n[tag=nutlet.display,dx=0,dz=0,dy=0] \
    run return fail

function ifsou:ifs_a/schematic/all