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
# 无法破坏
data modify storage ifsou:recipe \
    IfsA.running.'{"minecraft:axolotl_bucket":1,"minecraft:beacon":1,"minecraft:enchanted_golden_apple":1,"minecraft:end_crystal":1,"minecraft:lingering_potion":2,"minecraft:totem_of_undying":1}' set value \
    {color: 4143932,\
    preMatch: "ifsou:recipe/ifs_a/pre_match/unbreakable",\
    absorbing: "ifsou:recipe/ifs_a/absorbing/unbreakable",\
    output: "ifsou:recipe/ifs_a/output/unbreakable"}
data modify storage ifsou:recipe \
    IfsA.display append value \
    {button_label: {\
        translate: "ifsou.enhance.Unbreakable",\
        "color": "#3f3b3c"},\
    dialog: "ifsou:recipe/ifs_a/unbreakable"}
# 玻璃破坏者
data modify storage ifsou:recipe \
    IfsA.running.'{"minecraft:amethyst_shard":1,"minecraft:glass":1,"minecraft:quartz":2}' set value \
    {color: 14085612,\
    preMatch: "ifsou:recipe/ifs_a/pre_match/glass_breaker",\
    absorbing: "ifsou:recipe/ifs_a/absorbing/glass_breaker",\
    output: "ifsou:recipe/ifs_a/output/glass_breaker"}
data modify storage ifsou:recipe \
    IfsA.display append value \
    {button_label: {\
        translate: "ifsou.item.GlassBreaker",\
        "color": "#d6edec"},\
    dialog: "ifsou:recipe/ifs_a/glass_breaker"}
# 多合一工具
data modify storage ifsou:recipe \
    IfsA.running.'{"ifsou:glass_breaker":1,"minecraft:heavy_core":1,"minecraft:lingering_potion":1,"minecraft:nether_star":1,"minecraft:netherite_axe":1,"minecraft:netherite_hoe":1,"minecraft:netherite_pickaxe":1,"minecraft:netherite_shovel":1,"minecraft:shears":1}' set value \
    {color: 6374488,\
    preMatch: "ifsou:recipe/ifs_a/pre_match/multitool",\
    output: "ifsou:recipe/ifs_a/output/multitool"}
data modify storage ifsou:recipe \
    IfsA.display append value \
    {button_label: {\
        translate: "ifsou.item.Multitool",\
        "color": "#614458"},\
    dialog: "ifsou:recipe/ifs_a/multitool"}
# 奔流
data modify storage ifsou:recipe \
    IfsA.running.'{"minecraft:diamond":1,"minecraft:firework_rocket":1,"minecraft:nether_wart":1,"minecraft:sticky_piston":1,"minecraft:water_bucket":1}' set value \
    {color: 2004212,\
    preMatch: "ifsou:recipe/ifs_a/pre_match/rushing_stream",\
    absorbing: "ifsou:recipe/ifs_a/absorbing/rushing_stream",\
    output: "ifsou:recipe/ifs_a/output/rushing_stream"}
data modify storage ifsou:recipe \
    IfsA.display append value \
    {button_label: {\
        translate: "ifsou.enhance.RushingStream",\
        "color": "#1e94f4"},\
    dialog: "ifsou:recipe/ifs_a/rushing_stream"}
# 除根
data modify storage ifsou:recipe \
    IfsA.running.'{"minecraft:copper_torch":1,"minecraft:diamond":1,"minecraft:redstone_torch":1,"minecraft:shears":1,"minecraft:soul_torch":1,"minecraft:torch":1}' set value \
    {color: 7951674,\
    preMatch: "ifsou:recipe/ifs_a/pre_match/eradicate",\
    absorbing: "ifsou:recipe/ifs_a/absorbing/eradicate",\
    output: "ifsou:recipe/ifs_a/output/eradicate"}
data modify storage ifsou:recipe \
    IfsA.display append value \
    {button_label: {\
        translate: "ifsou.enhance.Eradicate",\
        "color": "#79553a"},\
    dialog: "ifsou:recipe/ifs_a/eradicate"}



# 法袋
data modify storage ifsou:recipe \
    IfsA.running.'{"minecraft:gold_block":1,"minecraft:honeycomb":3,"minecraft:resin_clump":1}' set value \
    {color: 13864029,\
    preMatch: "ifsou:recipe/ifs_a/pre_match/wundle",\
    absorbing: "ifsou:recipe/ifs_a/absorbing/wundle",\
    output: "ifsou:recipe/ifs_a/output/wundle"}
data modify storage ifsou:recipe \
    IfsA.display append value \
    {button_label: {\
        translate: "ifsou.item.Wundle",\
        "color": "#d38c5d"},\
    dialog: "ifsou:recipe/ifs_a/wundle"}
# 法袋核心：雪球
data modify storage ifsou:recipe \
    IfsA.running.'{"minecraft:carved_pumpkin":1,"minecraft:iron_shovel":1,"minecraft:snow_block":2}' set value \
    {color: 12177873,\
    preMatch: "ifsou:recipe/ifs_a/wd_cr/pre_match/snowball",\
    absorbing: "ifsou:recipe/ifs_a/wd_cr/absorbing/snowball",\
    output: "ifsou:recipe/ifs_a/wd_cr/output/snowball"}
data modify storage ifsou:recipe \
    IfsA.display append value \
    {button_label: {\
        translate: "ifsou.item.WundleCore.Snowball",\
        "color": "#b9d1d1"},\
    dialog: "ifsou:recipe/ifs_a/wd_cr/snowball"}
# 法袋核心：风弹
data modify storage ifsou:recipe \
    IfsA.running.'{"minecraft:breeze_rod":1,"minecraft:chorus_flower":1,"minecraft:feather":3,"minecraft:milk_bucket":1}' set value \
    {color: 9675193,\
    preMatch: "ifsou:recipe/ifs_a/wd_cr/pre_match/wind_charge",\
    absorbing: "ifsou:recipe/ifs_a/wd_cr/absorbing/wind_charge",\
    output: "ifsou:recipe/ifs_a/wd_cr/output/wind_charge"}
data modify storage ifsou:recipe \
    IfsA.display append value \
    {button_label: {\
        translate: "ifsou.item.WundleCore.WindCharge",\
        "color": "#93a1b9"},\
    dialog: "ifsou:recipe/ifs_a/wd_cr/wind_charge"}
# 法袋核心：末影珍珠
data modify storage ifsou:recipe \
    IfsA.running.'{"minecraft:chorus_fruit":2,"minecraft:end_stone":2,"minecraft:ender_pearl":1}' set value \
    {color: 2310460,\
    preMatch: "ifsou:recipe/ifs_a/wd_cr/pre_match/ender_pearl",\
    absorbing: "ifsou:recipe/ifs_a/wd_cr/absorbing/ender_pearl",\
    output: "ifsou:recipe/ifs_a/wd_cr/output/ender_pearl"}
data modify storage ifsou:recipe \
    IfsA.display append value \
    {button_label: {\
        translate: "ifsou.item.WundleCore.EnderPearl",\
        "color": "#23413c"},\
    dialog: "ifsou:recipe/ifs_a/wd_cr/ender_pearl"}
