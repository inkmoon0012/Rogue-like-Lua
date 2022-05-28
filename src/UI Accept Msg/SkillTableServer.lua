local player = base.player(1)
local hero = player:get_hero()


-- print('skill001 upgrade to ' .. skill001_level)


local current_skill = hero:find_skill('$$.spell.寒冰箭.root')

base.ui.proto.UpgradeSkill =
    function(player, UpgradeSkillInfo) -- 接收UI消息，UpgradeSkill事件

        print(UpgradeSkillInfo.skill_id .. " level is " ..
                  UpgradeSkillInfo.skill_level)
        local switch = {
            --法师
            [101] = function()
                local skill001_level = UpgradeSkillInfo.skill_level
                hero:set('火球术等级', skill001_level)
                current_skill = hero:find_skill('$$.spell.寒冰箭.root')
                if current_skill then current_skill:remove()
                end
                current_skill = hero:add_skill('$$.spell.火球术001.root', '英雄', 0)
                print('skill001 upgrade to ' .. skill001_level)
            end,

            [102] = function()
                local skill002_level = UpgradeSkillInfo.skill_level
                hero:set('火焰之墙等级', skill002_level)
                current_skill = hero:find_skill('$$.spell.冰环.root')
                if current_skill then current_skill:remove()
                end
                current_skill = hero:add_skill('$$.spell.火焰之墙.root', '英雄', 2)
                print('skill002 upgrade to ' .. skill002_level)
            end,

            [103] = function()
                local skill003_level = UpgradeSkillInfo.skill_level
                hero:set('炎帝等级', skill003_level)
                current_skill = hero:find_skill('$$default_units.spell.暴风雪.root')
                if current_skill then current_skill:remove()
                end
                current_skill = hero:add_skill('$$.spell.炎帝.root', '英雄', 3)
                print('skill003 upgrade to ' .. skill003_level)
            end,

            [104] = function()
                local skill004_level = UpgradeSkillInfo.skill_level
                hero:set('灼烧等级', skill004_level)
                print('skill004 upgrade to ' .. skill004_level)
            end,
            [105] = function()
                local skill005_level = UpgradeSkillInfo.skill_level
                hero:set('寒冰箭等级', skill005_level)
                current_skill = hero:find_skill('$$.spell.火球术001.root')
                if current_skill then current_skill:remove() end
                current_skill = hero:add_skill('$$.spell.寒冰箭.root', '英雄', 0)
                print('skill005 upgrade to ' .. skill005_level)
            end,

            [106] = function()
                local skill006_level = UpgradeSkillInfo.skill_level
                hero:set('冰暴等级', skill006_level)
                current_skill = hero:find_skill('$$.spell.火焰之墙.root')
                if current_skill then current_skill:remove() end
                current_skill = hero:add_skill('$$.spell.冰环.root', '英雄', 2)
                print('skill006 upgrade to ' .. skill006_level)
            end,

            [107] = function()
                local skill007_level = UpgradeSkillInfo.skill_level
                hero:set('暴风雪等级', skill007_level)
                current_skill = hero:find_skill('$$.spell.炎帝.root')
                if current_skill then current_skill:remove() end
                current_skill = hero:add_skill('$$default_units.spell.暴风雪.root', '英雄', 3)
                print('skill007 upgrade to ' .. skill007_level)
            end,

            [108] = function()
                local skill008_level = UpgradeSkillInfo.skill_level
                hero:add('召唤火焰卫士等级', 1)
                if hero:find_buff('$$.buff.召唤物数量.root') then 
                     local buff = hero:find_buff('$$.buff.召唤物数量.root')
                     buff:set_stack(0) end
                current_skill = hero:find_skill('$$.spell.召唤水元素.root')
                if current_skill then current_skill:remove() end
                current_skill = hero:add_skill('$$.spell.召唤火焰卫士.root', '英雄', 4)
                local buff = hero:find_buff('$$.buff.召唤物数量.root')
                print('skill008 upgrade to ' .. skill008_level)
            end,

            [109] = function()
                local skill009_level = UpgradeSkillInfo.skill_level
                hero:add('召唤水元素等级', 1)
                if hero:find_buff('$$.buff.召唤物数量.root') then 
                    local buff = hero:find_buff('$$.buff.召唤物数量.root')
                    buff:set_stack(0) end
                current_skill = hero:find_skill('$$.spell.召唤火焰卫士.root')
                if current_skill then current_skill:remove() end
                current_skill = hero:add_skill('$$.spell.召唤水元素.root', '英雄', 4)
                print('skill009 upgrade to ' .. skill009_level)
            end,

            --战士
            [201] = function()
                local skill001_level = UpgradeSkillInfo.skill_level
                hero:set('半月斩等级', skill001_level)
                current_skill = hero:find_skill('$$.spell.逐日斩.root')
                if current_skill then current_skill:remove()
                end
                current_skill = hero:add_skill('$$.spell.半月斩.root', '英雄', 0)
                print('skill001 upgrade to ' .. skill001_level)
            end,

            [202] = function()
                local skill002_level = UpgradeSkillInfo.skill_level
                hero:set('逐日斩等级', skill002_level)
                current_skill = hero:find_skill('$$.spell.半月斩.root')
                if current_skill then current_skill:remove()
                end
                current_skill = hero:add_skill('$$.spell.逐日斩.root', '英雄', 0)
                print('skill002 upgrade to ' .. skill002_level)
            end,

            [203] = function()
                local skill003_level = UpgradeSkillInfo.skill_level
                hero:set('裂地斩等级', skill003_level)
                current_skill = hero:find_skill('$$default_units.spell.旋风斩.root')
                if current_skill then current_skill:remove()
                end
                current_skill = hero:add_skill('$$.spell.裂地斩.root', '英雄', 2)
                print('skill003 upgrade to ' .. skill003_level)
            end,

            [204] = function()
                local skill004_level = UpgradeSkillInfo.skill_level
                hero:set('旋风斩等级', skill004_level)
                current_skill = hero:find_skill('$$.spell.裂地斩.root')
                if current_skill then current_skill:remove()
                end
                current_skill = hero:add_skill('$$default_units.spell.旋风斩.root', '英雄', 2)
                print('skill004 upgrade to ' .. skill004_level)
            end,
            [205] = function()
                local skill005_level = UpgradeSkillInfo.skill_level
                hero:set('剑刃乱舞等级', skill005_level)
                current_skill = hero:find_skill('$$.spell.裂地斩.root')
                if current_skill then current_skill:remove() end
                current_skill = hero:add_skill('$$.spell.剑刃乱舞.root', '英雄', 3)
                print('skill005 upgrade to ' .. skill005_level)
            end,

            [206] = function()
                local skill006_level = UpgradeSkillInfo.skill_level
                hero:set('怒气爆发等级', skill006_level)
                current_skill = hero:find_skill('$$.spell.剑刃乱舞.root')
                if current_skill then current_skill:remove() end
                current_skill = hero:add_skill('$$.spell.怒气爆发.root', '英雄', 3)
                print('skill006 upgrade to ' .. skill006_level)
            end,

            [207] = function()
                local skill007_level = UpgradeSkillInfo.skill_level
                hero:set('守护光环等级', skill007_level)
                current_skill = hero:find_skill(4, '英雄')
                if current_skill then current_skill:remove() end
                current_skill = hero:add_skill('$$.spell.守护光环.root', '英雄', 4)
                print('skill007 upgrade to ' .. skill007_level)
            end,

            [208] = function()
                local skill008_level = UpgradeSkillInfo.skill_level
                hero:set('鼓舞光环等级', skill008_level)
                current_skill = hero:find_skill(4, '英雄')
                if current_skill then current_skill:remove() end
                current_skill = hero:add_skill('$$.spell.鼓舞光环.root', '英雄', 4)
                print('skill008 upgrade to ' .. skill008_level)
            end,

            [209] = function()
                local skill009_level = UpgradeSkillInfo.skill_level
                hero:set('强击光环等级', skill009_level)
                current_skill = hero:find_skill(4, '英雄')
                if current_skill then current_skill:remove() end
                current_skill = hero:add_skill('$$.spell.强击光环.root', '英雄', 4)
                print('skill009 upgrade to ' .. skill009_level)
            end
        }

        local UpgradeSkill = switch[UpgradeSkillInfo.skill_id]
        if UpgradeSkill then UpgradeSkill() end
        --current_skill:remove()
    end

-- base.ui.proto.UpgradeSkill =
--     function(player, UpgradeSkillInfo) -- 接收UI消息，UpgradeSkill事件

--         print(UpgradeSkillInfo.skill_id .. " level is " .. UpgradeSkillInfo.skill_level)
--         if (UpgradeSkillInfo.skill_id == 101) then
--             skill001_level = UpgradeSkillInfo.skill_level
--             hero:set('闪避', skill001_level)
--             print('skill001 upgrade to ' .. skill001_level)
--         else
--             if (UpgradeSkillInfo.skill_id == 102) then
--                 skill002_level = UpgradeSkillInfo.skill_level
--                 hero:set('魔抗', skill002_level)
--                 print('skill002 upgrade to ' .. skill002_level)
--             else
--                 if (UpgradeSkillInfo.skill_id == 103) then
--                     skill003_level = UpgradeSkillInfo.skill_level
--                     hero:set('减耗', skill003_level)
--                     print('skill003 upgrade to ' .. skill003_level)
--                 else
--                     if (UpgradeSkillInfo.skill_id == 104) then
--                         skill004_level = UpgradeSkillInfo.skill_level
--                         hero:set('吸血', skill004_level)
--                         print('skill004 upgrade to ' .. skill004_level)

--                     end
--                 end
--             end
--         end
--     end
