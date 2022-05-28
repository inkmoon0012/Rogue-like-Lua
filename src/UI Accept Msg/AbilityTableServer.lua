local player = base.player(1)
local hero = player:get_hero()


-- print('ability001 upgrade to ' .. ability001_level)


base.ui.proto.UpgradeAbility =
    function(player, UpgradeAbilityInfo) -- 接收UI消息，Upgradeability事件

        print(UpgradeAbilityInfo.ability_id.. " ability level is "..UpgradeAbilityInfo.ability_level)
        local switch = {
            [1001] = function()
                local ability001_level = UpgradeAbilityInfo.ability_level
                hero:add('法术破甲', ability001_level * 20)                 --待修改，改为独立变量便于计算
                print('法术破甲 upgrade to ' .. ability001_level)
            end,
    
            [1002] = function()
                local ability002_level = UpgradeAbilityInfo.ability_level
                hero:add('法术暴击', ability002_level * 10)
                print('法术暴击 upgrade to ' .. ability002_level)
            end,
    
            [1003] = function()
                local ability003_level = UpgradeAbilityInfo.ability_level
                hero:add('法术暴击伤害', ability003_level * 0.5)
                print('法术暴击伤害 upgrade to ' .. ability003_level)
            end,
    
            [1004] = function()
                local ability004_level = UpgradeAbilityInfo.ability_level
                hero:set('脆化冻结', ability004_level)
                print('脆化冻结 upgrade to ' .. ability004_level)
            end,
    
            [1005] = function()
                local ability005_level = UpgradeAbilityInfo.ability_level
                hero:set('快速冻结秘籍', ability005_level)
                print('快速冻结秘籍 upgrade to ' .. ability005_level)
            end,
    
            [1006] = function()
                local ability006_level = UpgradeAbilityInfo.ability_level
                hero:set('寒冰掌握秘籍', ability006_level)
                print('寒冰掌握秘籍 upgrade to ' .. ability006_level)
            end,
    
            [1007] = function()
                local ability007_level = UpgradeAbilityInfo.ability_level
                hero:set('雪崩秘籍', ability007_level)
                print('雪崩秘籍 upgrade to ' .. ability007_level)
            end,
    
            [1008] = function()
                local ability008_level = UpgradeAbilityInfo.ability_level
                hero:set('凛冬秘籍', ability008_level)
                print('凛冬秘籍 upgrade to ' .. ability008_level)
            end,
    
            [1009] = function()
                local ability009_level = UpgradeAbilityInfo.ability_level
                hero:set('冰风暴秘籍', ability009_level)
                print('冰风暴秘籍 upgrade to ' .. ability009_level)
            end,
    
            [1010] = function()
                local ability010_level = UpgradeAbilityInfo.ability_level
                hero:set('爆燃秘籍', ability010_level)
                print('爆燃秘籍 upgrade to ' .. ability010_level)
            end,
    
            [1011] = function()
                local ability011_level = UpgradeAbilityInfo.ability_level
                hero:set('癫火秘籍', ability011_level)
                print('癫火秘籍 upgrade to ' .. ability011_level)
            end,
    
            [1012] = function()
                local ability012_level = UpgradeAbilityInfo.ability_level
                hero:set('炙烤秘籍', ability012_level)
                print('炙烤秘籍 upgrade to ' .. ability012_level)
            end,
    
            [1013] = function()
                local ability013_level = UpgradeAbilityInfo.ability_level
                hero:set('焚天秘籍', ability013_level)
                print('焚天秘籍 upgrade to ' .. ability013_level)
            end,
    
            [1014] = function()
                local ability014_level = UpgradeAbilityInfo.ability_level
                hero:set('火球增效秘籍', ability014_level)
                print('火球增效秘籍 upgrade to ' .. ability014_level)
            end,
    
            [1015] = function()
                local ability015_level = UpgradeAbilityInfo.ability_level
                hero:set('火焰召唤师秘籍', ability015_level)
                print('火焰召唤师秘籍 upgrade to ' .. ability015_level)
            end,
    
            [1016] = function()
                local ability016_level = UpgradeAbilityInfo.ability_level
                hero:set('冰霜召唤师秘籍', ability016_level)
                print('冰霜召唤师秘籍 upgrade to ' .. ability016_level)
            end,
    
            [1017] = function()
                local ability017_level = UpgradeAbilityInfo.ability_level
                hero:set('闪烁能量秘籍', ability017_level)
                print('闪烁能量秘籍 upgrade to ' .. ability017_level)
            end,
    
            [2001] = function()
                local ability2001_level = UpgradeAbilityInfo.ability_level
                hero:set('撕裂秘籍', ability2001_level)
                print('撕裂秘籍 upgrade to ' .. ability2001_level)
            end,
    
            [2002] = function()
                local ability2002_level = UpgradeAbilityInfo.ability_level
                hero:set('出血秘籍', ability2002_level)
                print('出血秘籍 upgrade to ' .. ability2002_level)
            end,
    
            [2003] = function()
                local ability2003_level = UpgradeAbilityInfo.ability_level
                hero:set('狂热秘籍', ability2003_level)
                print('狂热秘籍 upgrade to ' .. ability2003_level)
            end,
    
            [2004] = function()
                local ability2004_level = UpgradeAbilityInfo.ability_level
                hero:set('致死秘籍', ability2004_level)
                print('致死秘籍 upgrade to ' .. ability2004_level)
            end,
    
            [2005] = function()
                local ability2005_level = UpgradeAbilityInfo.ability_level
                hero:set('碎魂秘籍', ability2005_level)
                print('碎魂秘籍 upgrade to ' .. ability2005_level)
            end,
    
            [2006] = function()
                local ability2006_level = UpgradeAbilityInfo.ability_level
                hero:set('逐日震荡秘籍', ability2006_level)
                print('逐日震荡秘籍 upgrade to ' .. ability2006_level)
            end,
    
            [2007] = function()
                local ability2007_level = UpgradeAbilityInfo.ability_level
                hero:set('辟地秘籍', ability2007_level)
                print('辟地秘籍 upgrade to ' .. ability2007_level)
            end,
    
            [2008] = function()
                local ability2008_level = UpgradeAbilityInfo.ability_level
                hero:set('裂地震荡秘籍', ability2008_level)
                print('裂地震荡秘籍 upgrade to ' .. ability2008_level)
            end,
    
            [2009] = function()
                local ability2009_level = UpgradeAbilityInfo.ability_level
                hero:set('穿肠秘籍', ability2009_level)
            end,
    
            [2010] = function()
                local ability2010_level = UpgradeAbilityInfo.ability_level
                hero:set('嗜血秘籍', ability2010_level)
            end,
    
            [2011] = function()
                local ability2011_level = UpgradeAbilityInfo.ability_level
                hero:add('攻击', ability2011_level * 20)                     --直接修改属性
                print('攻击 upgrade to ' .. ability001_level)
                hero:set('神力秘籍', ability2011_level)
            end,
    
            [2012] = function()
                local ability2012_level = UpgradeAbilityInfo.ability_level
                hero:add('暴击伤害', ability2012_level * 0.5)                     --直接修改属性
                print('暴击伤害 upgrade to ' .. ability001_level)
                hero:set('狂怒秘籍', ability2012_level)
            end,
    
            [2013] = function()
                local ability2013_level = UpgradeAbilityInfo.ability_level
                hero:set('暴怒秘籍', ability2013_level)
            end,
    
            [2014] = function()
                local ability2014_level = UpgradeAbilityInfo.ability_level
                hero:set('月刃秘籍', ability2014_level)
            end,
    
            [2015] = function()
                local ability2015_level = UpgradeAbilityInfo.ability_level
                hero:set('命源秘籍', ability2015_level)
            end,
    
            [2016] = function()
                local ability2016_level = UpgradeAbilityInfo.ability_level
                hero:set('乱舞震荡秘籍', ability2016_level)
            end,
    
            [2017] = function()
                local ability2017_level = UpgradeAbilityInfo.ability_level
                hero:set('亢奋秘籍', ability2017_level)
            end
    
        }
    
        local UpgradeAbility = switch[UpgradeAbilityInfo.ability_id]
        if UpgradeAbility then UpgradeAbility() end
    end



-- base.ui.proto.UpgradeAbility =
--     function(player, UpgradeAbilityInfo) -- 接收UI消息，Upgradeability事件

--         print(UpgradeAbilityInfo.ability_id.. " ability level is "..UpgradeAbilityInfo.ability_level)
--         if (UpgradeAbilityInfo.ability_id == 1001) then
--             ability001_level = UpgradeAbilityInfo.ability_level
--             hero:add('法术破甲', ability001_level * 100)
--             print('ability001 upgrade to ' .. ability001_level)

--         else
--             if (UpgradeAbilityInfo.ability_id == 1002) then
--                 ability002_level = ability002_level + 1
--                 hero:add('暴击', ability002_level * 5)
--                 print('ability002 upgrade to ' .. ability002_level)
--             else
--                 if (UpgradeAbilityInfo.ability_id == 1003) then
--                     ability003_level = ability003_level + 1
--                     hero:add('暴击伤害', ability003_level * 0.5)
--                     print('ability003 upgrade to ' .. ability003_level)

--                 end
--             end
--         end
--     end