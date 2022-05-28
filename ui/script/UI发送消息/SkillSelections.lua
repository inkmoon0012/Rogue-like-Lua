local defaultui = require '@defaultui.main'

local Selection001 = base.ui.panel {
    z_index = 10,
    show = false,
    layout = {
        width = 300,
        height = 500,
        col_self = 'start',
        relative = {-450, 200}
    },
    image = 'image/弹窗.png',
    bind = {show = 'showLabel', event = {on_click = 'ClickLabel'}},

    base.ui.label { -- 技能等级
        text = 'level',
        layout = {
            width = 300,
            height = 500,
            col_self = 'start',
            relative = {0, -200}
        },
        font = {size = 22, color = 'e0bad', bold = 2},
        bind = {text = 'level'}
    },
    base.ui.label { -- 技能名
        text = 'Selection001',
        layout = {
            width = 300,
            height = 500,
            col_self = 'start',
            relative = {0, -150}
        },
        font = {size = 30, color = 'e0bad', bold = 2},
        bind = {text = 'text'}
    },

    base.ui.label { -- 技能描述1
        text = 'Selection001_Description1',
        layout = {
            width = 300,
            height = 500,
            col_self = 'start',
            relative = {0, 0}
        },
        font = {size = 18, color = 'e0bad', bold = 2},
        bind = {text = 'description1'}
    },
    base.ui.label { -- 技能描述2
        text = 'Selection001_Description2',
        layout = {
            width = 300,
            height = 500,
            col_self = 'start',
            relative = {0, 150}
        },
        font = {size = 18, color = 'e0bad', bold = 2},
        bind = {text = 'description2'}
    }

}

-- local Selection001 = base.ui.label { -- 创建UI窗口
--     z_index = 10,
--     show = false,
--     layout = {
--         width = 300,
--         height = 500,
--         col_self = 'start',
--         relative = {0, 300}
--     },
--     font = {size = 22, color = 'e0bad', bold = 2},
--     image = 'image/弹窗.png',
--     text = 'Selection001',
--     bind = {
--         show = 'showLabel',
--         event = {on_click = 'ClickLabel'},
--         text = 'text'
--     }
-- }

local Selection002 = base.ui.panel {
    z_index = 10,
    show = false,
    layout = {
        width = 300,
        height = 500,
        col_self = 'start',
        relative = {0, 200}
    },
    image = 'image/弹窗.png',
    bind = {show = 'showLabel', event = {on_click = 'ClickLabel'}},

    base.ui.label { -- 技能等级
        text = 'level',
        layout = {
            width = 300,
            height = 500,
            col_self = 'start',
            relative = {0, -200}
        },
        font = {size = 22, color = 'e0bad', bold = 2},
        bind = {text = 'level'}
    },
    base.ui.label { -- 技能名
        text = 'Selection002',
        layout = {
            width = 300,
            height = 500,
            col_self = 'start',
            relative = {0, -150}
        },
        font = {size = 30, color = 'e0bad', bold = 2},
        bind = {text = 'text'}
    },

    base.ui.label { -- 技能描述1
        text = 'Selection001_Description1',
        layout = {
            width = 300,
            height = 500,
            col_self = 'start',
            relative = {0, 0}
        },
        font = {size = 18, color = 'e0bad', bold = 2},
        bind = {text = 'description1'}
    },

    base.ui.label { -- 技能描述2
        text = 'Selection001_Description2',
        layout = {
            width = 300,
            height = 500,
            col_self = 'start',
            relative = {0, 150}
        },
        font = {size = 18, color = 'e0bad', bold = 2},
        bind = {text = 'description2'}
    }
}

local Selection003 = base.ui.panel {
    z_index = 10,
    show = false,
    layout = {
        width = 300,
        height = 500,
        col_self = 'start',
        relative = {450, 200}
    },
    image = 'image/弹窗.png',
    bind = {show = 'showLabel', event = {on_click = 'ClickLabel'}},

    base.ui.label { -- 技能等级
        text = 'level',
        layout = {
            width = 300,
            height = 500,
            col_self = 'start',
            relative = {0, -200}
        },
        font = {size = 22, color = 'e0bad', bold = 2},
        bind = {text = 'level'}
    },

    base.ui.label { -- 技能名
        text = 'Selection003',
        layout = {
            width = 300,
            height = 500,
            col_self = 'start',
            relative = {0, -150}
        },
        font = {size = 30, color = 'e0bad', bold = 2},
        bind = {text = 'text'}
    },
    base.ui.label { -- 技能描述1
        text = 'Selection001_Description1',
        layout = {
            width = 300,
            height = 500,
            col_self = 'start',
            relative = {0, 0}
        },
        font = {size = 18, color = 'e0bad', bold = 2},
        bind = {text = 'description1'}
    },

    base.ui.label { -- 技能描述2
        text = 'Selection001_Description2',
        layout = {
            width = 300,
            height = 500,
            col_self = 'start',
            relative = {0, 150}
        },
        font = {size = 18, color = 'e0bad', bold = 2},
        bind = {text = 'description2'}
    }
}

local UpgradeSkillInfo = {skill_id = 0, skill_level = 0}

ui, bind_Selection001 = base.ui.create(Selection001) -- 001选项
-- bind_Selection001.ClickLabel = function()
--     if bind_Selection001.text == '火球术' then
--         MageSkillTable[101]['level'] = MageSkillTable[101]['level'] + 1 -- 101技能等级加1，并赋值给技能表
--         UpgradeSkillInfo.skill_id = 101 -- 升级信息
--         UpgradeSkillInfo.skill_level = MageSkillTable[101]['level']
--         print("skill level is " .. MageSkillTable[101]['level'])

--     else
--         if bind_Selection001.text == '火墙术' then
--             MageSkillTable[102]['level'] = MageSkillTable[102]['level'] + 1
--             UpgradeSkillInfo.skill_id = 102
--             UpgradeSkillInfo.skill_level = MageSkillTable[102]['level']

--         else
--             if bind_Selection001.text == '炎帝' then
--                 MageSkillTable[103]['level'] = MageSkillTable[103]['level'] + 1
--                 UpgradeSkillInfo.skill_id = 103
--                 UpgradeSkillInfo.skill_level = MageSkillTable[103]['level']

--             else
--                 if bind_Selection001.text == '灼烧' then
--                     MageSkillTable[104]['level'] =
--                         MageSkillTable[104]['level'] + 1
--                     UpgradeSkillInfo.skill_id = 104
--                     UpgradeSkillInfo.skill_level = MageSkillTable[104]['level']

--                 end
--             end
--         end
--     end

--     base.game:server 'UpgradeSkill'(UpgradeSkillInfo) -- 给服务器发消息，UpgradeSkill事件，参数为升级信息
--     print(bind_Selection001.text)

--     bind_Selection002.showLabel = false
--     bind_Selection003.showLabel = false
--     base.wait(1000, function() bind_Selection001.showLabel = false end)

-- end

bind_Selection001.ClickLabel = function()

    local mage_switch = { -- 法师技能
        ['火球术'] = function()
            MageSkillTable[101]['level'] = MageSkillTable[101]['level'] + 1 -- 101技能等级加1，并赋值给技能表
            UpgradeSkillInfo.skill_id = 101 -- 升级信息
            UpgradeSkillInfo.skill_level = MageSkillTable[101]['level']
            print("skill level is " .. MageSkillTable[101]['level'])
        end,

        ['火墙术'] = function()
            MageSkillTable[102]['level'] = MageSkillTable[102]['level'] + 1
            UpgradeSkillInfo.skill_id = 102
            UpgradeSkillInfo.skill_level = MageSkillTable[102]['level']
        end,

        ['炎帝'] = function()
            MageSkillTable[103]['level'] = MageSkillTable[103]['level'] + 1
            UpgradeSkillInfo.skill_id = 103
            UpgradeSkillInfo.skill_level = MageSkillTable[103]['level']
        end,

        ['灼烧'] = function()
            MageSkillTable[104]['level'] = MageSkillTable[104]['level'] + 1
            UpgradeSkillInfo.skill_id = 104
            UpgradeSkillInfo.skill_level = MageSkillTable[104]['level']
        end,

        ['寒冰箭'] = function()
            MageSkillTable[105]['level'] = MageSkillTable[105]['level'] + 1
            UpgradeSkillInfo.skill_id = 105
            UpgradeSkillInfo.skill_level = MageSkillTable[105]['level']
        end,

        ['冰霜新星'] = function()
            MageSkillTable[106]['level'] = MageSkillTable[106]['level'] + 1
            UpgradeSkillInfo.skill_id = 106
            UpgradeSkillInfo.skill_level = MageSkillTable[106]['level']
        end,

        ['暴风雪'] = function()
            MageSkillTable[107]['level'] = MageSkillTable[107]['level'] + 1
            UpgradeSkillInfo.skill_id = 107
            UpgradeSkillInfo.skill_level = MageSkillTable[107]['level']
        end,

        ['召唤火焰卫士'] = function()
            MageSkillTable[108]['level'] = MageSkillTable[108]['level'] + 1
            UpgradeSkillInfo.skill_id = 108
            UpgradeSkillInfo.skill_level = MageSkillTable[108]['level']
        end,

        ['召唤水元素'] = function()
            MageSkillTable[109]['level'] = MageSkillTable[109]['level'] + 1
            UpgradeSkillInfo.skill_id = 109
            UpgradeSkillInfo.skill_level = MageSkillTable[109]['level']
        end

    }

    local warrior_switch = { -- 战士技能
        ['半月斩'] = function()
            WarriorSkillTable[201]['level'] =
                WarriorSkillTable[201]['level'] + 1 -- 201技能等级加1，并赋值给技能表
            UpgradeSkillInfo.skill_id = 201 -- 升级信息
            UpgradeSkillInfo.skill_level = WarriorSkillTable[201]['level']
            print("skill level is " .. WarriorSkillTable[201]['level'])
        end,

        ['逐日斩'] = function()
            WarriorSkillTable[202]['level'] =
                WarriorSkillTable[202]['level'] + 1
            UpgradeSkillInfo.skill_id = 202
            UpgradeSkillInfo.skill_level = WarriorSkillTable[202]['level']
        end,

        ['裂地斩'] = function()
            WarriorSkillTable[203]['level'] =
                WarriorSkillTable[203]['level'] + 1
            UpgradeSkillInfo.skill_id = 203
            UpgradeSkillInfo.skill_level = WarriorSkillTable[203]['level']
        end,

        ['旋风斩'] = function()
            WarriorSkillTable[204]['level'] =
                WarriorSkillTable[204]['level'] + 1
            UpgradeSkillInfo.skill_id = 204
            UpgradeSkillInfo.skill_level = WarriorSkillTable[204]['level']
        end,

        ['剑刃乱舞'] = function()
            WarriorSkillTable[205]['level'] =
                WarriorSkillTable[205]['level'] + 1
            UpgradeSkillInfo.skill_id = 205
            UpgradeSkillInfo.skill_level = WarriorSkillTable[205]['level']
        end,

        ['怒气爆发'] = function()
            WarriorSkillTable[206]['level'] =
                WarriorSkillTable[206]['level'] + 1
            UpgradeSkillInfo.skill_id = 206
            UpgradeSkillInfo.skill_level = WarriorSkillTable[206]['level']
        end,

        ['守护光环'] = function()
            WarriorSkillTable[207]['level'] =
                WarriorSkillTable[207]['level'] + 1
            UpgradeSkillInfo.skill_id = 207
            UpgradeSkillInfo.skill_level = WarriorSkillTable[207]['level']
        end,

        ['鼓舞光环'] = function()
            WarriorSkillTable[208]['level'] =
                WarriorSkillTable[208]['level'] + 1
            UpgradeSkillInfo.skill_id = 208
            UpgradeSkillInfo.skill_level = WarriorSkillTable[208]['level']
        end,

        ['强击光环'] = function()
            WarriorSkillTable[209]['level'] =
                WarriorSkillTable[209]['level'] + 1
            UpgradeSkillInfo.skill_id = 209
            UpgradeSkillInfo.skill_level = WarriorSkillTable[209]['level']
        end
    }

    local player = base.player(1)
    local hero = player:get_hero()
    local hero_name = hero:get_name()

    if hero_name == '$$.unit.hero001.root' then
        local UpgradeSkill = mage_switch[bind_Selection001.text]
        if UpgradeSkill then UpgradeSkill() end
    end

    if hero_name == "$$.unit.hero002.root" then
        local UpgradeSkill = warrior_switch[bind_Selection001.text]
        if UpgradeSkill then UpgradeSkill() end
    end


    base.game:server 'UpgradeSkill'(UpgradeSkillInfo) -- 给服务器发消息，UpgradeSkill事件，参数为升级信息
    print(bind_Selection001.text)

    bind_Selection002.showLabel = false
    bind_Selection003.showLabel = false
    base.wait(1000, function() bind_Selection001.showLabel = false end)
end

ui, bind_Selection002 = base.ui.create(Selection002) -- 002选项
bind_Selection002.ClickLabel = function()
    local mage_switch = {
        ['火球术'] = function()
            MageSkillTable[101]['level'] = MageSkillTable[101]['level'] + 1 -- 101技能等级加1，并赋值给技能表
            UpgradeSkillInfo.skill_id = 101 -- 升级信息
            UpgradeSkillInfo.skill_level = MageSkillTable[101]['level']
            print("skill level is " .. MageSkillTable[101]['level'])
        end,

        ['火墙术'] = function()
            MageSkillTable[102]['level'] = MageSkillTable[102]['level'] + 1
            UpgradeSkillInfo.skill_id = 102
            UpgradeSkillInfo.skill_level = MageSkillTable[102]['level']
        end,

        ['炎帝'] = function()
            MageSkillTable[103]['level'] = MageSkillTable[103]['level'] + 1
            UpgradeSkillInfo.skill_id = 103
            UpgradeSkillInfo.skill_level = MageSkillTable[103]['level']
        end,

        ['灼烧'] = function()
            MageSkillTable[104]['level'] = MageSkillTable[104]['level'] + 1
            UpgradeSkillInfo.skill_id = 104
            UpgradeSkillInfo.skill_level = MageSkillTable[104]['level']
        end,

        ['寒冰箭'] = function()
            MageSkillTable[105]['level'] = MageSkillTable[105]['level'] + 1
            UpgradeSkillInfo.skill_id = 105
            UpgradeSkillInfo.skill_level = MageSkillTable[105]['level']
        end,

        ['冰霜新星'] = function()
            MageSkillTable[106]['level'] = MageSkillTable[106]['level'] + 1
            UpgradeSkillInfo.skill_id = 106
            UpgradeSkillInfo.skill_level = MageSkillTable[106]['level']
        end,

        ['暴风雪'] = function()
            MageSkillTable[107]['level'] = MageSkillTable[107]['level'] + 1
            UpgradeSkillInfo.skill_id = 107
            UpgradeSkillInfo.skill_level = MageSkillTable[107]['level']
        end,

        ['召唤火焰卫士'] = function()
            MageSkillTable[108]['level'] = MageSkillTable[108]['level'] + 1
            UpgradeSkillInfo.skill_id = 108
            UpgradeSkillInfo.skill_level = MageSkillTable[108]['level']
        end,

        ['召唤水元素'] = function()
            MageSkillTable[109]['level'] = MageSkillTable[109]['level'] + 1
            UpgradeSkillInfo.skill_id = 109
            UpgradeSkillInfo.skill_level = MageSkillTable[109]['level']
        end

    }

    local warrior_switch = {
        ['半月斩'] = function()
            WarriorSkillTable[201]['level'] =
                WarriorSkillTable[201]['level'] + 1 -- 201技能等级加1，并赋值给技能表
            UpgradeSkillInfo.skill_id = 201 -- 升级信息
            UpgradeSkillInfo.skill_level = WarriorSkillTable[201]['level']
            print("skill level is " .. WarriorSkillTable[201]['level'])
        end,

        ['逐日斩'] = function()
            WarriorSkillTable[202]['level'] =
                WarriorSkillTable[202]['level'] + 1
            UpgradeSkillInfo.skill_id = 202
            UpgradeSkillInfo.skill_level = WarriorSkillTable[202]['level']
        end,

        ['裂地斩'] = function()
            WarriorSkillTable[203]['level'] =
                WarriorSkillTable[203]['level'] + 1
            UpgradeSkillInfo.skill_id = 203
            UpgradeSkillInfo.skill_level = WarriorSkillTable[203]['level']
        end,

        ['旋风斩'] = function()
            WarriorSkillTable[204]['level'] =
                WarriorSkillTable[204]['level'] + 1
            UpgradeSkillInfo.skill_id = 204
            UpgradeSkillInfo.skill_level = WarriorSkillTable[204]['level']
        end,

        ['剑刃乱舞'] = function()
            WarriorSkillTable[205]['level'] =
                WarriorSkillTable[205]['level'] + 1
            UpgradeSkillInfo.skill_id = 205
            UpgradeSkillInfo.skill_level = WarriorSkillTable[205]['level']
        end,

        ['怒气爆发'] = function()
            WarriorSkillTable[206]['level'] =
                WarriorSkillTable[206]['level'] + 1
            UpgradeSkillInfo.skill_id = 206
            UpgradeSkillInfo.skill_level = WarriorSkillTable[206]['level']
        end,

        ['守护光环'] = function()
            WarriorSkillTable[207]['level'] =
                WarriorSkillTable[207]['level'] + 1
            UpgradeSkillInfo.skill_id = 207
            UpgradeSkillInfo.skill_level = WarriorSkillTable[207]['level']
        end,

        ['鼓舞光环'] = function()
            WarriorSkillTable[208]['level'] =
                WarriorSkillTable[208]['level'] + 1
            UpgradeSkillInfo.skill_id = 208
            UpgradeSkillInfo.skill_level = WarriorSkillTable[208]['level']
        end,

        ['强击光环'] = function()
            WarriorSkillTable[209]['level'] =
                WarriorSkillTable[209]['level'] + 1
            UpgradeSkillInfo.skill_id = 209
            UpgradeSkillInfo.skill_level = WarriorSkillTable[209]['level']
        end
    }

    local player = base.player(player_index)
    local hero = player:get_hero()
    local hero_name = hero:get_name()

    if hero_name == '$$.unit.hero001.root' then
        local UpgradeSkill = mage_switch[bind_Selection002.text]
        if UpgradeSkill then UpgradeSkill() end
    end

    if hero_name == '$$.unit.hero002.root' then
        local UpgradeSkill = warrior_switch[bind_Selection002.text]
        if UpgradeSkill then UpgradeSkill() end
    end

    base.game:server 'UpgradeSkill'(UpgradeSkillInfo) -- 给服务器发消息，UpgradeSkill事件，参数为升级信息
    print(bind_Selection002.text)

    bind_Selection001.showLabel = false
    bind_Selection003.showLabel = false
    base.wait(1000, function() bind_Selection002.showLabel = false end)
end

ui, bind_Selection003 = base.ui.create(Selection003) -- 003选项
bind_Selection003.ClickLabel = function()
    local mage_switch = {
        ['火球术'] = function()
            MageSkillTable[101]['level'] = MageSkillTable[101]['level'] + 1 -- 101技能等级加1，并赋值给技能表
            UpgradeSkillInfo.skill_id = 101 -- 升级信息
            UpgradeSkillInfo.skill_level = MageSkillTable[101]['level']
            print("skill level is " .. MageSkillTable[101]['level'])
        end,

        ['火墙术'] = function()
            MageSkillTable[102]['level'] = MageSkillTable[102]['level'] + 1
            UpgradeSkillInfo.skill_id = 102
            UpgradeSkillInfo.skill_level = MageSkillTable[102]['level']
        end,

        ['炎帝'] = function()
            MageSkillTable[103]['level'] = MageSkillTable[103]['level'] + 1
            UpgradeSkillInfo.skill_id = 103
            UpgradeSkillInfo.skill_level = MageSkillTable[103]['level']
        end,

        ['灼烧'] = function()
            MageSkillTable[104]['level'] = MageSkillTable[104]['level'] + 1
            UpgradeSkillInfo.skill_id = 104
            UpgradeSkillInfo.skill_level = MageSkillTable[104]['level']
        end,

        ['寒冰箭'] = function()
            MageSkillTable[105]['level'] = MageSkillTable[105]['level'] + 1
            UpgradeSkillInfo.skill_id = 105
            UpgradeSkillInfo.skill_level = MageSkillTable[105]['level']
        end,

        ['冰霜新星'] = function()
            MageSkillTable[106]['level'] = MageSkillTable[106]['level'] + 1
            UpgradeSkillInfo.skill_id = 106
            UpgradeSkillInfo.skill_level = MageSkillTable[106]['level']
        end,

        ['暴风雪'] = function()
            MageSkillTable[107]['level'] = MageSkillTable[107]['level'] + 1
            UpgradeSkillInfo.skill_id = 107
            UpgradeSkillInfo.skill_level = MageSkillTable[107]['level']
        end,

        ['召唤火焰卫士'] = function()
            MageSkillTable[108]['level'] = MageSkillTable[108]['level'] + 1
            UpgradeSkillInfo.skill_id = 108
            UpgradeSkillInfo.skill_level = MageSkillTable[108]['level']
        end,

        ['召唤水元素'] = function()
            MageSkillTable[109]['level'] = MageSkillTable[109]['level'] + 1
            UpgradeSkillInfo.skill_id = 109
            UpgradeSkillInfo.skill_level = MageSkillTable[109]['level']
        end

    }

    local warrior_switch = {
        ['半月斩'] = function()
            WarriorSkillTable[201]['level'] =
                WarriorSkillTable[201]['level'] + 1 -- 101技能等级加1，并赋值给技能表
            UpgradeSkillInfo.skill_id = 201 -- 升级信息
            UpgradeSkillInfo.skill_level = WarriorSkillTable[201]['level']
            print("skill level is " .. WarriorSkillTable[201]['level'])
        end,

        ['逐日斩'] = function()
            WarriorSkillTable[202]['level'] =
                WarriorSkillTable[202]['level'] + 1
            UpgradeSkillInfo.skill_id = 202
            UpgradeSkillInfo.skill_level = WarriorSkillTable[202]['level']
        end,

        ['裂地斩'] = function()
            WarriorSkillTable[203]['level'] =
                WarriorSkillTable[203]['level'] + 1
            UpgradeSkillInfo.skill_id = 203
            UpgradeSkillInfo.skill_level = WarriorSkillTable[203]['level']
        end,

        ['旋风斩'] = function()
            WarriorSkillTable[204]['level'] =
                WarriorSkillTable[204]['level'] + 1
            UpgradeSkillInfo.skill_id = 204
            UpgradeSkillInfo.skill_level = WarriorSkillTable[204]['level']
        end,

        ['剑刃乱舞'] = function()
            WarriorSkillTable[205]['level'] =
                WarriorSkillTable[205]['level'] + 1
            UpgradeSkillInfo.skill_id = 205
            UpgradeSkillInfo.skill_level = WarriorSkillTable[205]['level']
        end,

        ['怒气爆发'] = function()
            WarriorSkillTable[206]['level'] =
                WarriorSkillTable[206]['level'] + 1
            UpgradeSkillInfo.skill_id = 206
            UpgradeSkillInfo.skill_level = WarriorSkillTable[206]['level']
        end,

        ['守护光环'] = function()
            WarriorSkillTable[207]['level'] =
                WarriorSkillTable[207]['level'] + 1
            UpgradeSkillInfo.skill_id = 207
            UpgradeSkillInfo.skill_level = WarriorSkillTable[207]['level']
        end,

        ['鼓舞光环'] = function()
            WarriorSkillTable[208]['level'] =
                WarriorSkillTable[208]['level'] + 1
            UpgradeSkillInfo.skill_id = 208
            UpgradeSkillInfo.skill_level = WarriorSkillTable[208]['level']
        end,

        ['强击光环'] = function()
            WarriorSkillTable[209]['level'] =
                WarriorSkillTable[209]['level'] + 1
            UpgradeSkillInfo.skill_id = 209
            UpgradeSkillInfo.skill_level = WarriorSkillTable[209]['level']
        end
    }

    local player = base.player(1)
    local hero = player:get_hero()
    local hero_name = hero:get_name()

    if hero_name == '$$.unit.hero001.root' then
        local UpgradeSkill = mage_switch[bind_Selection003.text]
        if UpgradeSkill then UpgradeSkill() end
    end

    if hero_name == '$$.unit.hero002.root' then
        local UpgradeSkill = warrior_switch[bind_Selection003.text]
        if UpgradeSkill then UpgradeSkill() end
    end

    base.game:server 'UpgradeSkill'(UpgradeSkillInfo) -- 给服务器发消息，UpgradeSkill事件，参数为升级信息
    print(bind_Selection003.text)

    bind_Selection001.showLabel = false
    bind_Selection002.showLabel = false
    base.wait(1000, function() bind_Selection003.showLabel = false end)
end

-- --[[base.proto.LevelUp = -- UI接收服务器消息
-- function(table)
--     bind_Selection001.showLabel = true
--     bind_Selection002.showLabel = true
--     bind_Selection003.showLabel = true

-- end--]]
