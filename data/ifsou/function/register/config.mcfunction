# 配置: 是否在进入世界时打印PLTech数据包版本信息
# 接受的值: 
# acceptable vales: 
# [1b, 0b]
data modify storage nutlet:config list append value \
    {description:"Whether to print version info of Infusion Of You when login the world.",\
    name:"ifsou:print_version",  storage_path:"ifsou:config showVersion", acceptable:[1b, 0b],\
    default:"1b", type:"storage"}