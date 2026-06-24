# # 取消下行注释用 Datapack Helper Plus 插件Ctrl点击跳转
# #  uncomment under line, use DHP, ctrl+click to redirct 
# function ifsou:ifs_a/work/recipe/get_macro

# 马脚
data modify storage ifsou:recipe \
    IfsA.running.'{"minecraft:cod":2,"minecraft:feather":2,"minecraft:piston":1,"minecraft:rabbit_foot":2,"minecraft:wind_charge":2}' set value \
    {color: 26127,\
    preMatch: "ifsou:recipe/ifs_a/pre_match/horse_foot",\
    absorbing: "ifsou:recipe/ifs_a/absorbing/horse_foot",\
    output: "ifsou:recipe/ifs_a/output/horse_foot"}
data modify storage ifsou:recipe \
    IfsA.display append value \
    {button_label: {\
        translate: "ifsou.enhance.HorseFoot",\
        "color": "#00660f"},\
    dialog: "ifsou:recipe/ifs_a/horse_foot"}
# 深度挖掘
data modify storage ifsou:recipe \
    IfsA.running.'{"minecraft:blackstone":1,"minecraft:deepslate":1,"minecraft:obsidian":1,"minecraft:smooth_basalt":1,"minecraft:smooth_quartz":3,"minecraft:tuff":1}' set value \
    {color: 3181744,\
    preMatch: "ifsou:recipe/ifs_a/pre_match/depth_digger",\
    absorbing: "ifsou:recipe/ifs_a/absorbing/depth_digger",\
    output: "ifsou:recipe/ifs_a/output/depth_digger"}
data modify storage ifsou:recipe \
    IfsA.display append value \
    {button_label: {\
        translate: "ifsou.enhance.DepthDigger",\
        "color": "#308cb0"},\
    dialog: "ifsou:recipe/ifs_a/depth_digger"}
# 召唤雷雨
data modify storage ifsou:recipe \
    IfsA.running.'{"minecraft:lightning_rod":1,"minecraft:potion":1,"minecraft:trident":1}' set value \
    {color: 14696030,\
    preMatch: "ifsou:recipe/ifs_a/pre_match/thunder",\
    absorbing: "ifsou:recipe/ifs_a/absorbing/thunder",\
    output: "ifsou:recipe/ifs_a/output/thunder"}
data modify storage ifsou:recipe \
    IfsA.display append value \
    {button_label: {\
        translate: "ifsou.infusion.Thunder",\
        "color": "#e03e5e"},\
    dialog: "ifsou:recipe/ifs_a/thunder"}
# 范围挖掘
data modify storage ifsou:recipe \
    IfsA.running.'{"minecraft:copper_pickaxe":8}' set value \
    {color: 6713957,\
    preMatch: "ifsou:recipe/ifs_a/pre_match/tunnel_boring",\
    output: "ifsou:recipe/ifs_a/output/tunnel_boring"}
data modify storage ifsou:recipe \
    IfsA.display append value \
    {button_label: {\
        translate: "ifsou.enhance.TunnelBoring",\
        "color": "#667265"},\
    dialog: "ifsou:recipe/ifs_a/tunnel_boring"}
# 幻影模型
data modify storage ifsou:recipe \
    IfsA.running.'{"minecraft:ender_pearl":3,"minecraft:ink_sac":1,"minecraft:name_tag":1}' set value \
    {color: 14013652,\
    preMatch: "ifsou:recipe/ifs_a/pre_match/phantom_model",\
    absorbing: "ifsou:recipe/ifs_a/absorbing/phantom_model",\
    output: "ifsou:recipe/ifs_a/output/phantom_model"}
data modify storage ifsou:recipe \
    IfsA.display append value \
    {button_label: {\
        translate: "ifsou.infusion.PhantomModel",\
        "color": "#d5d4d4"},\
    dialog: "ifsou:recipe/ifs_a/phantom_model"}
# 隐形盔甲
data modify storage ifsou:recipe \
    IfsA.running.'{"minecraft:dragon_breath":1,"minecraft:ender_eye":1,"minecraft:potion":1}' set value \
    {color: 13889243,\
    preMatch: "ifsou:recipe/ifs_a/pre_match/invisible_armor",\
    absorbing: "ifsou:recipe/ifs_a/absorbing/invisible_armor",\
    output: "ifsou:recipe/ifs_a/output/invisible_armor"}
data modify storage ifsou:recipe \
    IfsA.display append value \
    {button_label: {\
        translate: "ifsou.enhance.InvisibleArmor",\
        "color": "#d3eedb"},\
    dialog: "ifsou:recipe/ifs_a/invisible_armor"}
