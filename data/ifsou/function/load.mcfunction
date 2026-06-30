scoreboard objectives add IfsOU.Clac dummy


function ifsou:recipe/load

# inject version, print info of datapack
# 不要忘了修改 pl_tech:get_version！！！
# 还有pack.mcmeta！！！
execute unless data storage ifsou:config \
    {version:"V0.3"} \
    run return run \
        function ifsou:version_changed {version:"V0.3"}
execute if data storage ifsou:config {showVersion:1b} \
    run function ifsou:print/info