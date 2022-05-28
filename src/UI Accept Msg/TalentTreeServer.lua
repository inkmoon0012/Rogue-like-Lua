local player = base.player(1)
local hero = player:get_hero()

base.ui.proto.UpgradeTalent =
    function(player, UpgradeTalentInfo) -- 接收UI消息，UpgradeSkill事件

        print(UpgradeTalentInfo.talent_id .. " level is " ..
                  UpgradeTalentInfo.talent_level)
        local switch = {
            [10001] = function()
                local talent10001_level = UpgradeTalentInfo.talent_level
                hero:set('火焰亲和天赋等级', talent10001_level)
                local c = base.s.get_commit()
                talent_tree.talent10001 = talent_tree.talent10001 + 1 -- 天赋+1并赋值
                c.score_set(player, 'talent_tree', talent_tree) -- 设置服务端数据
                c.commit('天赋001+1')
                print('火焰亲和 upgrade to ' .. talent10001_level)
            end,

            [10002] = function()
                local talent10002_level = UpgradeTalentInfo.talent_level
                hero:set('不屈意志天赋等级', talent10002_level)
                talent_tree.talent10002 = talent_tree.talent10002 + 1 -- 天赋+1并赋值
                local c = base.s.get_commit()
                c.score_set(player, 'talent_tree', talent_tree) -- 设置服务端数据
                c.commit('天赋002+1')
                print('不屈意志 upgrade to ' .. talent10002_level)
            end,

            [10003] = function()
                local talent10003_level = UpgradeTalentInfo.talent_level
                hero:set('冰冷之心天赋等级', talent10003_level)
                talent_tree.talent10003 = talent_tree.talent10003 + 1 -- 天赋+1并赋值
                local c = base.s.get_commit()
                c.score_set(player, 'talent_tree', talent_tree) -- 设置服务端数据
                c.commit('天赋003+1')
                print('冰冷之心 upgrade to ' .. talent10003_level)
            end,

            [10004] = function()
                local talent10004_level = UpgradeTalentInfo.talent_level
                hero:set('强化火球术天赋等级', talent10004_level)
                talent_tree.talent10004 = talent_tree.talent10004 + 1 -- 天赋+1并赋值
                local c = base.s.get_commit()
                c.score_set(player, 'talent_tree', talent_tree) -- 设置服务端数据
                c.commit('天赋004+1')
                print('强化火球术 upgrade to ' .. talent10004_level)
            end,

            [10005] = function()
                local talent10005_level = UpgradeTalentInfo.talent_level
                hero:set('强化灼烧天赋等级', talent10005_level)
                talent_tree.talent10005 = talent_tree.talent10005 + 1 -- 天赋+1并赋值
                local c = base.s.get_commit()
                c.score_set(player, 'talent_tree', talent_tree) -- 设置服务端数据
                c.commit('天赋005+1')
                print('强化灼烧 upgrade to ' .. talent10005_level)
            end,

            [10006] = function()
                local talent10006_level = UpgradeTalentInfo.talent_level
                hero:set('寒冰增效天赋等级', talent10006_level)
                talent_tree.talent10006 = talent_tree.talent10006 + 1 -- 天赋+1并赋值
                local c = base.s.get_commit()
                c.score_set(player, 'talent_tree', talent_tree) -- 设置服务端数据
                c.commit('天赋006+1')
                print('寒冰增效 upgrade to ' .. talent10006_level)
            end,

            [10007] = function()
                local talent10007_level = UpgradeTalentInfo.talent_level
                hero:set('强化寒冰箭天赋等级', talent10007_level)
                talent_tree.talent10007 = talent_tree.talent10007 + 1 -- 天赋+1并赋值
                local c = base.s.get_commit()
                c.score_set(player, 'talent_tree', talent_tree) -- 设置服务端数据
                c.commit('天赋007+1')
                print('强化寒冰箭 upgrade to ' .. talent10007_level)
            end
        }

        local c = base.s.get_commit()
        c.score_addi(player, 'map_score', -5) -- 给需要添加积分的玩家增加积分
        c.commit('地图积分+1')
        map_score_souls = map_score_souls - 5
        player:ui 'update_souls' {souls = map_score_souls}

        local UpgradeTalent = switch[UpgradeTalentInfo.talent_id]
        if UpgradeTalent then UpgradeTalent() end

    end


base.ui.proto.ResetTalent = function(player, talent_tree_reset) 
    print(talent_tree_reset.talent10001)
    talent_tree = talent_tree_reset
    local c = base.s.get_commit()
    c.score_set(player, 'talent_tree', talent_tree) -- 设置服务端数据
    c.commit('重置天赋')
    
    --法师
    hero:set('火焰亲和天赋等级', 0)
    hero:set('不屈意志天赋等级', 0)
    hero:set('冰冷之心天赋等级', 0)
    hero:set('强化火球术天赋等级', 0)
    hero:set('强化灼烧天赋等级', 0)
    hero:set('寒冰增效天赋等级', 0)
    hero:set('强化寒冰箭天赋等级', 0)

    --战士
    hero:set('武力压制天赋等级', 0)
    hero:set('不灭之躯天赋等级', 0)
    hero:set('冲动天赋等级', 0)
    hero:set('动脉打击天赋等级', 0)
    hero:set('月光斩天赋等级', 0)
    hero:set('逐日剑法天赋等级', 0)
    hero:set('致命打击天赋等级', 0)
    print('Reset Talent')
end