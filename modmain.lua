if not GLOBAL.TheNet:GetIsServer() then 
    return
end

local fireproof_list = {
    --TOOLS
        "saltlick",                     --舔盐器
    --LIGHT
        "mushroom_light",               --蘑菇灯
        "mushroom_light2",              --蘑菇灯
    --SURVIVAL
        "tent",                         --帐篷
        "siestahut",                    --遮阳棚
    --FARM
        "slow_farmplot",                --基础农场
        "fast_farmplot",                --强化农村
        "mushroom_farm",                --蘑菇农村
        "beebox",                       --蜂箱
        "meatrack",                     --晒肉架
        "cookpot",                      --烹饪锅
        "portablecookpot",              --便携烹饪锅
        "portableblender",              --便携研磨器
        "portablespicer",               --便携香料站
    --SCIENCE
        "madscience_lab",               --疯狂科学家实验室
        "researchlab",                  --科学机器
        "researchlab2",                 --炼金引擎
        "seafaring_prototyper",         --智囊团
        "cartographydesk",              --制图桌
        "sculptingtable",               --陶轮
        "winterometer",                 --温度测量仪
        "rainometer",                   --雨量计
    --STRUCTURES
        "table_winters_feast",          --冬季盛宴餐桌
        "winter_tree",                  --冬季圣诞树
        "perdshrine",                   --火鸡神龛
        "wargshrine",                   --座狼龛
        "pigshrine",                    --猪神龛
        "yotc_carratshrine",            --胡萝卜鼠神龛
        "treasurechest",                --木箱
        --"homesign",                   --路牌
        --"arrowsign_post",             --指路标志
        "minisign",                     --小木牌
        "fence_gate",                   --木门
        "fence",                        --木栅栏
        --"wall_hay"                    --草墙
        --"wall_wood",                  --木墙
        "wardrobe",                     --衣柜
        "pighouse",                     --猪屋
        "rabbithouse",                  --兔屋
        "scarecrow",                    --友善的稻草人
        "tacklestation",                --钓鱼容器
        "trophyscale_fish",             --鱼类计重器
        "pottedfern",                   --蕨类盆栽
        "succulent_potted",             --多肉盆栽
        --"endtable",                   --茶几
    --SEAFARING
        --"boat",                       --船
        --"anchor",                     --锚
        --"mast",                       --桅杆
        --"mast_malbatross",            --飞翼风帆
        --"steeringwheel",              --舵
    --MAGIC
        "researchlab3",                 --灵子分解机
        "researchlab4",                 --暗影操控器
        "resurrectionstatue",           --替身人偶
        "sentryward",                   --月眼守卫
    --PERDSHRINE
        "yotc_carrat_race_start",       --起点
        "yotc_carrat_race_finish",      --终点线
        "yotc_carrat_race_checkpoint",  --检查点
        "yotc_carrat_gym_speed",        --速度健身房
        "yotc_carrat_gym_reaction",     --反应健身房
        "yotc_carrat_gym_stamina",      --耐力健身房
        "yotc_carrat_gym_direction",    --方向健身房
        "yotc_carrat_scale",            --胡萝卜鼠称
}

--根据设置插入相关物品

if GetModConfigData("sign_fireproof") then
    for k,v in pairs(GetModConfigData("sign_fireproof")) do
        table.insert(fireproof_list,v)
    end
end

if GetModConfigData("wall_fireproof") then
    for k,v in pairs(GetModConfigData("wall_fireproof")) do
        table.insert(fireproof_list,v)
    end
end

if GetModConfigData("endtable_fireproof") then
    if GetModConfigData("endtable_fireproof") then
        table.insert(fireproof_list, "endtable")
    end
end

local boat_list = {
        "boat",                         --船
        "anchor",                       --锚
        "mast",                         --桅杆
        "mast_malbatross",              --飞翼风帆
        "steeringwheel",                --舵
}

if GetModConfigData("boat_fireproof") then
    for k,v in pairs(boat_list) do
        table.insert(fireproof_list, v)
    end
end

local fireproof_plant_list = {
    "grass",
    "sapling",
    "berrybush",
    "berrybush2",
    "berrybush_juicy",
    "reeds",
    "rock_avocado_bush",
    "moon_tree",
    "sapling_moon",
}

if GetModConfigData("plants_fireproof") then
    for k, v in pairs(fireproof_plant_list) do
        table.insert(fireproof_list, v)
    end
end

--主函数

for k, v in pairs(fireproof_list) do
    AddPrefabPostInit(v, function(inst)
        if not inst:HasTag("fireimmune") then
            inst:AddTag("fireimmune")
        end
        if inst and inst.components.burnable then
            inst.components.burnable.canlight = false
        end
    end)
end