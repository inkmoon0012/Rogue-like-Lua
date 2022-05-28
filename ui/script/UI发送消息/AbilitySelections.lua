local defaultui = require '@defaultui.main'

local Selection001 = base.ui.panel { -- 创建UI窗口
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

    base.ui.label { -- 秘籍等级
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
    base.ui.label { -- 秘籍名
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
    base.ui.label { -- 秘籍描述1
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
    base.ui.label { -- 秘籍描述2
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

local Selection002 = base.ui.label {
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

    base.ui.label { -- 秘籍等级
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
    base.ui.label { -- 秘籍名
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

    base.ui.label { -- 秘籍描述1
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

    base.ui.label { -- 秘籍描述2
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

local Selection003 = base.ui.label {
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

    base.ui.label { -- 秘籍等级
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

    base.ui.label { -- 秘籍名
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
    base.ui.label { -- 秘籍描述1
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

    base.ui.label { -- 秘籍描述2
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

local UpgradeAbilityInfo = {ability_id = 0, ability_level = 0}

ui, bind_AbilitySelection001 = base.ui.create(Selection001) -- 001选项
bind_AbilitySelection001.ClickLabel = function()
    local switch = {
        ['法术能量'] = function()
            MageAbilityTable[1001]['level'] =
                MageAbilityTable[1001]['level'] + 1 -- 1001秘籍等级加1，并赋值给秘籍表
            UpgradeAbilityInfo.ability_id = 1001 -- 升级信息
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1001]['level']
            print("ability level is " .. MageAbilityTable[1001]['level'])
        end,

        ['魔法专注'] = function()
            MageAbilityTable[1002]['level'] =
                MageAbilityTable[1002]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1002
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1002]['level']
        end,

        ['魔法增效'] = function()
            MageAbilityTable[1003]['level'] =
                MageAbilityTable[1003]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1003
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1003]['level']
        end,

        ['脆化冻结'] = function()
            MageAbilityTable[1004]['level'] =
                MageAbilityTable[1004]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1004
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1004]['level']
            MageAbilityTable[1004] = nil -- 设置数据为空
        end,

        ['快速冻结'] = function()
            MageAbilityTable[1005]['level'] =
                MageAbilityTable[1005]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1005
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1005]['level']
            MageAbilityTable[1005] = nil -- 设置数据为空
        end,

        ['寒冰掌握'] = function()
            MageAbilityTable[1006]['level'] =
                MageAbilityTable[1006]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1006
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1006]['level']
            MageAbilityTable[1006] = nil -- 设置数据为空
        end,

        ['雪崩'] = function()
            MageAbilityTable[1007]['level'] =
                MageAbilityTable[1007]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1007
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1007]['level']
            MageAbilityTable[1007] = nil -- 设置数据为空
        end,

        ['凛冬'] = function()
            MageAbilityTable[1008]['level'] =
                MageAbilityTable[1008]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1008
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1008]['level']
            MageAbilityTable[1008] = nil -- 设置数据为空
        end,

        ['超新星'] = function()
            MageAbilityTable[1009]['level'] =
                MageAbilityTable[1009]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1009
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1009]['level']
            MageAbilityTable[1009] = nil -- 设置数据为空
        end,

        ['爆燃'] = function()
            MageAbilityTable[1010]['level'] =
                MageAbilityTable[1010]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1010
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1010]['level']
            MageAbilityTable[1010] = nil -- 设置数据为空
        end,

        ['癫火'] = function()
            MageAbilityTable[1011]['level'] =
                MageAbilityTable[1011]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1011
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1011]['level']
            if MageAbilityTable[1011]['level'] >= 3 then
                MageAbilityTable[1011] = nil -- 设置数据为空
            end
        end,

        ['炙烤'] = function()
            MageAbilityTable[1012]['level'] =
                MageAbilityTable[1012]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1012
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1012]['level']
            if MageAbilityTable[1012]['level'] >= 3 then
                MageAbilityTable[1012] = nil -- 设置数据为空
            end
        end,

        ['焚天'] = function()
            MageAbilityTable[1013]['level'] =
                MageAbilityTable[1013]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1013
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1013]['level']
            MageAbilityTable[1013] = nil -- 设置数据为空
        end,

        ['火球增效'] = function()
            MageAbilityTable[1014]['level'] =
                MageAbilityTable[1014]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1014
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1014]['level']
            if MageAbilityTable[1014]['level'] >= 3 then
                MageAbilityTable[1014] = nil -- 设置数据为空
            end
        end,

        ['火焰召唤师'] = function()
            MageAbilityTable[1015]['level'] =
                MageAbilityTable[1015]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1015
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1015]['level']
            if MageAbilityTable[1015]['level'] >= 3 then
                MageAbilityTable[1015] = nil -- 设置数据为空
            end
        end,

        ['冰霜召唤师'] = function()
            MageAbilityTable[1016]['level'] =
                MageAbilityTable[1016]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1016
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1016]['level']
            if MageAbilityTable[1016]['level'] >= 3 then
                MageAbilityTable[1016] = nil -- 设置数据为空
            end
        end,

        ['闪烁能量'] = function()
            MageAbilityTable[1017]['level'] =
                MageAbilityTable[1017]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1017
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1017]['level']
            MageAbilityTable[1017] = nil -- 设置数据为空
        end,

        ['撕裂'] = function()
            WarriorAbilityTable[2001]['level'] =
                WarriorAbilityTable[2001]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2001
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2001]['level']
            if WarriorAbilityTable[2001]['level'] >= 3 then
                WarriorAbilityTable[2001] = nil -- 设置数据为空
            end
        end,

        ['出血'] = function()
            WarriorAbilityTable[2002]['level'] =
                WarriorAbilityTable[2002]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2002
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2002]['level']
            if WarriorAbilityTable[2002]['level'] >= 3 then
                WarriorAbilityTable[2002] = nil -- 设置数据为空
            end
        end,

        ['狂热'] = function()
            WarriorAbilityTable[2003]['level'] =
                WarriorAbilityTable[2003]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2003
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2003]['level']
            if WarriorAbilityTable[2003]['level'] >= 3 then
                WarriorAbilityTable[2003] = nil -- 设置数据为空
            end
        end,

        ['致死'] = function()
            WarriorAbilityTable[2004]['level'] =
                WarriorAbilityTable[2004]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2004
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2004]['level']
            if WarriorAbilityTable[2004]['level'] >= 3 then
                WarriorAbilityTable[2004] = nil -- 设置数据为空
            end
        end,

        ['碎魂'] = function()
            WarriorAbilityTable[2005]['level'] =
                WarriorAbilityTable[2005]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2005
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2005]['level']
            if WarriorAbilityTable[2005]['level'] >= 3 then
                WarriorAbilityTable[2005] = nil -- 设置数据为空
            end
        end,

        ['逐日震荡'] = function()
            WarriorAbilityTable[2006]['level'] =
                WarriorAbilityTable[2006]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2006
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2006]['level']
            if WarriorAbilityTable[2006]['level'] >= 3 then
                WarriorAbilityTable[2006] = nil -- 设置数据为空
            end
        end,

        ['辟地'] = function()
            WarriorAbilityTable[2007]['level'] =
                WarriorAbilityTable[2007]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2007
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2007]['level']
            if WarriorAbilityTable[2007]['level'] >= 3 then
                WarriorAbilityTable[2007] = nil -- 设置数据为空
            end
        end,

        ['裂地震荡'] = function()
            WarriorAbilityTable[2008]['level'] =
                WarriorAbilityTable[2008]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2008
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2008]['level']
            if WarriorAbilityTable[2008]['level'] >= 3 then
                WarriorAbilityTable[2008] = nil -- 设置数据为空
            end
        end,

        ['穿肠'] = function()
            WarriorAbilityTable[2009]['level'] =
                WarriorAbilityTable[2009]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2009
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2009]['level']
            if WarriorAbilityTable[2009]['level'] >= 3 then
                WarriorAbilityTable[2009] = nil -- 设置数据为空
            end
        end,

        ['嗜血'] = function()
            WarriorAbilityTable[2010]['level'] =
                WarriorAbilityTable[2010]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2010
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2010]['level']
            if WarriorAbilityTable[2010]['level'] >= 3 then
                WarriorAbilityTable[2010] = nil -- 设置数据为空
            end
        end,

        ['神力'] = function()
            WarriorAbilityTable[2011]['level'] =
                WarriorAbilityTable[2011]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2011
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2011]['level']
            if WarriorAbilityTable[2011]['level'] >= 3 then
                WarriorAbilityTable[2011] = nil -- 设置数据为空
            end
        end,

        ['狂怒'] = function()
            WarriorAbilityTable[2012]['level'] =
                WarriorAbilityTable[2012]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2012
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2012]['level']
            if WarriorAbilityTable[2012]['level'] >= 3 then
                WarriorAbilityTable[2012] = nil -- 设置数据为空
            end
        end,

        ['暴怒'] = function()
            WarriorAbilityTable[2013]['level'] =
                WarriorAbilityTable[2013]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2013
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2013]['level']
            if WarriorAbilityTable[2013]['level'] >= 3 then
                WarriorAbilityTable[2013] = nil -- 设置数据为空
            end
        end,

        ['月刃'] = function()
            WarriorAbilityTable[2014]['level'] =
                WarriorAbilityTable[2014]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2014
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2014]['level']
            if WarriorAbilityTable[2014]['level'] >= 3 then
                WarriorAbilityTable[2014] = nil -- 设置数据为空
            end
        end,

        ['命源'] = function()
            WarriorAbilityTable[2015]['level'] =
                WarriorAbilityTable[2015]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2015
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2015]['level']
            if WarriorAbilityTable[2015]['level'] >= 3 then
                WarriorAbilityTable[2015] = nil -- 设置数据为空
            end
        end,

        ['乱舞震荡'] = function()
            WarriorAbilityTable[2016]['level'] =
                WarriorAbilityTable[2016]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2016
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2016]['level']
            if WarriorAbilityTable[2016]['level'] >= 3 then
                WarriorAbilityTable[2016] = nil -- 设置数据为空
            end
        end,

        ['亢奋'] = function()
            WarriorAbilityTable[2017]['level'] =
                WarriorAbilityTable[2017]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2017
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2017]['level']
            if WarriorAbilityTable[2017]['level'] >= 3 then
                WarriorAbilityTable[2017] = nil -- 设置数据为空
            end
        end

    }

    local UpgradeAbility = switch[bind_AbilitySelection001.text]
    if UpgradeAbility then UpgradeAbility() end

    print(bind_AbilitySelection001.text)
    base.game:server 'UpgradeAbility'(UpgradeAbilityInfo) -- 给服务器发消息，UpgradeAbility事件，秘籍升级

    bind_AbilitySelection002.showLabel = false
    bind_AbilitySelection003.showLabel = false
    base.wait(1000, function() bind_AbilitySelection001.showLabel = false end)

end

ui, bind_AbilitySelection002 = base.ui.create(Selection002) -- 002选项
bind_AbilitySelection002.ClickLabel = function()
    local switch = {
        ['法术能量'] = function()
            MageAbilityTable[1001]['level'] =
                MageAbilityTable[1001]['level'] + 1 -- 1001秘籍等级加1，并赋值给秘籍表
            UpgradeAbilityInfo.ability_id = 1001 -- 升级信息
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1001]['level']
            print("ability level is " .. MageAbilityTable[1001]['level'])
        end,

        ['魔法专注'] = function()
            MageAbilityTable[1002]['level'] =
                MageAbilityTable[1002]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1002
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1002]['level']
        end,

        ['魔法增效'] = function()
            MageAbilityTable[1003]['level'] =
                MageAbilityTable[1003]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1003
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1003]['level']
        end,

        ['脆化冻结'] = function()
            MageAbilityTable[1004]['level'] =
                MageAbilityTable[1004]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1004
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1004]['level']
            MageAbilityTable[1004] = nil
        end,

        ['快速冻结'] = function()
            MageAbilityTable[1005]['level'] =
                MageAbilityTable[1005]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1005
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1005]['level']
            MageAbilityTable[1005] = nil -- 设置数据为空
        end,

        ['寒冰掌握'] = function()
            MageAbilityTable[1006]['level'] =
                MageAbilityTable[1006]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1006
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1006]['level']
        end,

        ['雪崩'] = function()
            MageAbilityTable[1007]['level'] =
                MageAbilityTable[1007]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1007
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1007]['level']
            MageAbilityTable[1007] = nil -- 设置数据为空
        end,

        ['凛冬'] = function()
            MageAbilityTable[1008]['level'] =
                MageAbilityTable[1008]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1008
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1008]['level']
            MageAbilityTable[1008] = nil -- 设置数据为空
        end,

        ['超新星'] = function()
            MageAbilityTable[1009]['level'] =
                MageAbilityTable[1009]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1009
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1009]['level']
            MageAbilityTable[1009] = nil -- 设置数据为空
        end,

        ['爆燃'] = function()
            MageAbilityTable[1010]['level'] =
                MageAbilityTable[1010]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1010
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1010]['level']
            MageAbilityTable[1010] = nil -- 设置数据为空
        end,

        ['癫火'] = function()
            MageAbilityTable[1011]['level'] =
                MageAbilityTable[1011]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1011
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1011]['level']
            if MageAbilityTable[1011]['level'] >= 3 then
                MageAbilityTable[1011] = nil -- 设置数据为空
            end
        end,

        ['炙烤'] = function()
            MageAbilityTable[1012]['level'] =
                MageAbilityTable[1012]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1012
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1012]['level']
            if MageAbilityTable[1012]['level'] >= 3 then
                MageAbilityTable[1012] = nil -- 设置数据为空
            end
        end,

        ['焚天'] = function()
            MageAbilityTable[1013]['level'] =
                MageAbilityTable[1013]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1013
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1013]['level']
            MageAbilityTable[1013] = nil -- 设置数据为空
        end,

        ['火球增效'] = function()
            MageAbilityTable[1014]['level'] =
                MageAbilityTable[1014]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1014
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1014]['level']
            if MageAbilityTable[1014]['level'] >= 3 then
                MageAbilityTable[1014] = nil -- 设置数据为空
            end
        end,

        ['火焰召唤师'] = function()
            MageAbilityTable[1015]['level'] =
                MageAbilityTable[1015]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1015
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1015]['level']
            if MageAbilityTable[1015]['level'] >= 3 then
                MageAbilityTable[1015] = nil -- 设置数据为空
            end
        end,

        ['冰霜召唤师'] = function()
            MageAbilityTable[1016]['level'] =
                MageAbilityTable[1016]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1016
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1016]['level']
            if MageAbilityTable[1016]['level'] >= 3 then
                MageAbilityTable[1016] = nil -- 设置数据为空
            end
        end,

        ['闪烁能量'] = function()
            MageAbilityTable[1017]['level'] =
                MageAbilityTable[1017]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1017
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1017]['level']
            MageAbilityTable[1017] = nil -- 设置数据为空
        end,

        ['撕裂'] = function()
            WarriorAbilityTable[2001]['level'] =
                WarriorAbilityTable[2001]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2001
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2001]['level']
            if WarriorAbilityTable[2001]['level'] >= 3 then
                WarriorAbilityTable[2001] = nil -- 设置数据为空
            end
        end,

        ['出血'] = function()
            WarriorAbilityTable[2002]['level'] =
                WarriorAbilityTable[2002]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2002
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2002]['level']
            if WarriorAbilityTable[2002]['level'] >= 3 then
                WarriorAbilityTable[2002] = nil -- 设置数据为空
            end
        end,

        ['狂热'] = function()
            WarriorAbilityTable[2003]['level'] =
                WarriorAbilityTable[2003]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2003
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2003]['level']
            if WarriorAbilityTable[2003]['level'] >= 3 then
                WarriorAbilityTable[2003] = nil -- 设置数据为空
            end
        end,

        ['致死'] = function()
            WarriorAbilityTable[2004]['level'] =
                WarriorAbilityTable[2004]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2004
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2004]['level']
            if WarriorAbilityTable[2004]['level'] >= 3 then
                WarriorAbilityTable[2004] = nil -- 设置数据为空
            end
        end,

        ['碎魂'] = function()
            WarriorAbilityTable[2005]['level'] =
                WarriorAbilityTable[2005]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2005
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2005]['level']
            if WarriorAbilityTable[2005]['level'] >= 3 then
                WarriorAbilityTable[2005] = nil -- 设置数据为空
            end
        end,

        ['逐日震荡'] = function()
            WarriorAbilityTable[2006]['level'] =
                WarriorAbilityTable[2006]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2006
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2006]['level']
            if WarriorAbilityTable[2006]['level'] >= 3 then
                WarriorAbilityTable[2006] = nil -- 设置数据为空
            end
        end,

        ['辟地'] = function()
            WarriorAbilityTable[2007]['level'] =
                WarriorAbilityTable[2007]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2007
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2007]['level']
            if WarriorAbilityTable[2007]['level'] >= 3 then
                WarriorAbilityTable[2007] = nil -- 设置数据为空
            end
        end,

        ['裂地震荡'] = function()
            WarriorAbilityTable[2008]['level'] =
                WarriorAbilityTable[2008]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2008
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2008]['level']
            if WarriorAbilityTable[2008]['level'] >= 3 then
                WarriorAbilityTable[2008] = nil -- 设置数据为空
            end
        end,

        ['穿肠'] = function()
            WarriorAbilityTable[2009]['level'] =
                WarriorAbilityTable[2009]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2009
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2009]['level']
            if WarriorAbilityTable[2009]['level'] >= 3 then
                WarriorAbilityTable[2009] = nil -- 设置数据为空
            end
        end,

        ['嗜血'] = function()
            WarriorAbilityTable[2010]['level'] =
                WarriorAbilityTable[2010]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2010
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2010]['level']
            if WarriorAbilityTable[2010]['level'] >= 3 then
                WarriorAbilityTable[2010] = nil -- 设置数据为空
            end
        end,

        ['神力'] = function()
            WarriorAbilityTable[2011]['level'] =
                WarriorAbilityTable[2011]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2011
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2011]['level']
            if WarriorAbilityTable[2011]['level'] >= 3 then
                WarriorAbilityTable[2011] = nil -- 设置数据为空
            end
        end,

        ['狂怒'] = function()
            WarriorAbilityTable[2012]['level'] =
                WarriorAbilityTable[2012]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2012
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2012]['level']
            if WarriorAbilityTable[2012]['level'] >= 3 then
                WarriorAbilityTable[2012] = nil -- 设置数据为空
            end
        end,

        ['暴怒'] = function()
            WarriorAbilityTable[2013]['level'] =
                WarriorAbilityTable[2013]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2013
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2013]['level']
            if WarriorAbilityTable[2013]['level'] >= 3 then
                WarriorAbilityTable[2013] = nil -- 设置数据为空
            end
        end,

        ['月刃'] = function()
            WarriorAbilityTable[2014]['level'] =
                WarriorAbilityTable[2014]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2014
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2014]['level']
            if WarriorAbilityTable[2014]['level'] >= 3 then
                WarriorAbilityTable[2014] = nil -- 设置数据为空
            end
        end,

        ['命源'] = function()
            WarriorAbilityTable[2015]['level'] =
                WarriorAbilityTable[2015]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2015
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2015]['level']
            if WarriorAbilityTable[2015]['level'] >= 3 then
                WarriorAbilityTable[2015] = nil -- 设置数据为空
            end
        end,

        ['乱舞震荡'] = function()
            WarriorAbilityTable[2016]['level'] =
                WarriorAbilityTable[2016]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2016
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2016]['level']
            if WarriorAbilityTable[2016]['level'] >= 3 then
                WarriorAbilityTable[2016] = nil -- 设置数据为空
            end
        end,

        ['亢奋'] = function()
            WarriorAbilityTable[2017]['level'] =
                WarriorAbilityTable[2017]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2017
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2017]['level']
            if WarriorAbilityTable[2017]['level'] >= 3 then
                WarriorAbilityTable[2017] = nil -- 设置数据为空
            end
        end

    }

    local UpgradeAbility = switch[bind_AbilitySelection002.text]
    if UpgradeAbility then UpgradeAbility() end

    print(bind_AbilitySelection002.text)
    base.game:server 'UpgradeAbility'(UpgradeAbilityInfo) -- 给服务器发消息，UpgradeAbility事件，秘籍升级
    bind_AbilitySelection001.showLabel = false
    bind_AbilitySelection003.showLabel = false
    base.wait(1000, function() bind_AbilitySelection002.showLabel = false end)
end

ui, bind_AbilitySelection003 = base.ui.create(Selection003) -- 003选项
bind_AbilitySelection003.ClickLabel = function()
    local switch = {
        ['法术能量'] = function()
            MageAbilityTable[1001]['level'] =
                MageAbilityTable[1001]['level'] + 1 -- 1001秘籍等级加1，并赋值给秘籍表
            UpgradeAbilityInfo.ability_id = 1001 -- 升级信息
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1001]['level']
            if MageAbilityTable[1001]['level'] >= 3 then
                MageAbilityTable[1001] = nil -- 设置数据为空
            end
            print("ability level is " .. MageAbilityTable[1001]['level'])
        end,

        ['魔法专注'] = function()
            MageAbilityTable[1002]['level'] =
                MageAbilityTable[1002]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1002
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1002]['level']
            if MageAbilityTable[1002]['level'] >= 3 then
                MageAbilityTable[1002] = nil -- 设置数据为空
            end
        end,

        ['魔法增效'] = function()
            MageAbilityTable[1003]['level'] =
                MageAbilityTable[1003]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1003
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1003]['level']
            if MageAbilityTable[1003]['level'] >= 3 then
                MageAbilityTable[1003] = nil -- 设置数据为空
            end
        end,

        ['脆化冻结'] = function()
            MageAbilityTable[1004]['level'] =
                MageAbilityTable[1004]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1004
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1004]['level']
            MageAbilityTable[1004] = nil
            print(MageAbilityTable[1004])
        end,

        ['快速冻结'] = function()
            MageAbilityTable[1005]['level'] =
                MageAbilityTable[1005]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1005
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1005]['level']
            MageAbilityTable[1005] = nil -- 设置数据为空
        end,

        ['寒冰掌握'] = function()
            MageAbilityTable[1006]['level'] =
                MageAbilityTable[1006]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1006
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1006]['level']
            if MageAbilityTable[1006]['level'] >= 3 then
                MageAbilityTable[1006] = nil -- 设置数据为空
            end
        end,

        ['雪崩'] = function()
            MageAbilityTable[1007]['level'] =
                MageAbilityTable[1007]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1007
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1007]['level']
            MageAbilityTable[1007] = nil -- 设置数据为空
        end,

        ['凛冬'] = function()
            MageAbilityTable[1008]['level'] =
                MageAbilityTable[1008]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1008
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1008]['level']
            MageAbilityTable[1008] = nil -- 设置数据为空
        end,

        ['超新星'] = function()
            MageAbilityTable[1009]['level'] =
                MageAbilityTable[1009]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1009
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1009]['level']
            MageAbilityTable[1009] = nil -- 设置数据为空
        end,

        ['爆燃'] = function()
            MageAbilityTable[1010]['level'] =
                MageAbilityTable[1010]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1010
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1010]['level']
            MageAbilityTable[1010] = nil -- 设置数据为空
        end,

        ['癫火'] = function()
            MageAbilityTable[1011]['level'] =
                MageAbilityTable[1011]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1011
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1011]['level']
            if MageAbilityTable[1011]['level'] >= 3 then
                MageAbilityTable[1011] = nil -- 设置数据为空
            end
        end,

        ['炙烤'] = function()
            MageAbilityTable[1012]['level'] =
                MageAbilityTable[1012]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1012
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1012]['level']
            if MageAbilityTable[1012]['level'] >= 3 then
                MageAbilityTable[1012] = nil -- 设置数据为空
            end
        end,

        ['焚天'] = function()
            MageAbilityTable[1013]['level'] =
                MageAbilityTable[1013]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1013
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1013]['level']
            MageAbilityTable[1013] = nil -- 设置数据为空
        end,

        ['火球增效'] = function()
            MageAbilityTable[1014]['level'] =
                MageAbilityTable[1014]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1014
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1014]['level']
            if MageAbilityTable[1014]['level'] >= 3 then
                MageAbilityTable[1014] = nil -- 设置数据为空
            end
        end,

        ['火焰召唤师'] = function()
            MageAbilityTable[1015]['level'] =
                MageAbilityTable[1015]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1015
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1015]['level']
            if MageAbilityTable[1015]['level'] >= 3 then
                MageAbilityTable[1015] = nil -- 设置数据为空
            end
        end,

        ['冰霜召唤师'] = function()
            MageAbilityTable[1016]['level'] =
                MageAbilityTable[1016]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1016
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1016]['level']
            if MageAbilityTable[1016]['level'] >= 3 then
                MageAbilityTable[1016] = nil -- 设置数据为空
            end
        end,

        ['闪烁能量'] = function()
            MageAbilityTable[1017]['level'] =
                MageAbilityTable[1017]['level'] + 1
            UpgradeAbilityInfo.ability_id = 1017
            UpgradeAbilityInfo.ability_level = MageAbilityTable[1017]['level']
            MageAbilityTable[1017] = nil -- 设置数据为空
        end,

        ['撕裂'] = function()
            WarriorAbilityTable[2001]['level'] =
                WarriorAbilityTable[2001]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2001
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2001]['level']
            if WarriorAbilityTable[2001]['level'] >= 3 then
                WarriorAbilityTable[2001] = nil -- 设置数据为空
            end
        end,

        ['出血'] = function()
            WarriorAbilityTable[2002]['level'] =
                WarriorAbilityTable[2002]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2002
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2002]['level']
            if WarriorAbilityTable[2002]['level'] >= 3 then
                WarriorAbilityTable[2002] = nil -- 设置数据为空
            end
        end,

        ['狂热'] = function()
            WarriorAbilityTable[2003]['level'] =
                WarriorAbilityTable[2003]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2003
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2003]['level']
            if WarriorAbilityTable[2003]['level'] >= 3 then
                WarriorAbilityTable[2003] = nil -- 设置数据为空
            end
        end,

        ['致死'] = function()
            WarriorAbilityTable[2004]['level'] =
                WarriorAbilityTable[2004]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2004
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2004]['level']
            if WarriorAbilityTable[2004]['level'] >= 3 then
                WarriorAbilityTable[2004] = nil -- 设置数据为空
            end
        end,

        ['碎魂'] = function()
            WarriorAbilityTable[2005]['level'] =
                WarriorAbilityTable[2005]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2005
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2005]['level']
            if WarriorAbilityTable[2005]['level'] >= 3 then
                WarriorAbilityTable[2005] = nil -- 设置数据为空
            end
        end,

        ['逐日震荡'] = function()
            WarriorAbilityTable[2006]['level'] =
                WarriorAbilityTable[2006]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2006
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2006]['level']
            if WarriorAbilityTable[2006]['level'] >= 3 then
                WarriorAbilityTable[2006] = nil -- 设置数据为空
            end
        end,

        ['辟地'] = function()
            WarriorAbilityTable[2007]['level'] =
                WarriorAbilityTable[2007]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2007
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2007]['level']
            if WarriorAbilityTable[2007]['level'] >= 3 then
                WarriorAbilityTable[2007] = nil -- 设置数据为空
            end
        end,

        ['裂地震荡'] = function()
            WarriorAbilityTable[2008]['level'] =
                WarriorAbilityTable[2008]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2008
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2008]['level']
            if WarriorAbilityTable[2008]['level'] >= 3 then
                WarriorAbilityTable[2008] = nil -- 设置数据为空
            end
        end,

        ['穿肠'] = function()
            WarriorAbilityTable[2009]['level'] =
                WarriorAbilityTable[2009]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2009
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2009]['level']
            if WarriorAbilityTable[2009]['level'] >= 3 then
                WarriorAbilityTable[2009] = nil -- 设置数据为空
            end
        end,

        ['嗜血'] = function()
            WarriorAbilityTable[2010]['level'] =
                WarriorAbilityTable[2010]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2010
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2010]['level']
            if WarriorAbilityTable[2010]['level'] >= 3 then
                WarriorAbilityTable[2010] = nil -- 设置数据为空
            end
        end,

        ['神力'] = function()
            WarriorAbilityTable[2011]['level'] =
                WarriorAbilityTable[2011]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2011
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2011]['level']
            if WarriorAbilityTable[2011]['level'] >= 3 then
                WarriorAbilityTable[2011] = nil -- 设置数据为空
            end
        end,

        ['狂怒'] = function()
            WarriorAbilityTable[2012]['level'] =
                WarriorAbilityTable[2012]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2012
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2012]['level']
            if WarriorAbilityTable[2012]['level'] >= 3 then
                WarriorAbilityTable[2012] = nil -- 设置数据为空
            end
        end,

        ['暴怒'] = function()
            WarriorAbilityTable[2013]['level'] =
                WarriorAbilityTable[2013]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2013
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2013]['level']
            if WarriorAbilityTable[2013]['level'] >= 3 then
                WarriorAbilityTable[2013] = nil -- 设置数据为空
            end
        end,

        ['月刃'] = function()
            WarriorAbilityTable[2014]['level'] =
                WarriorAbilityTable[2014]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2014
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2014]['level']
            if WarriorAbilityTable[2014]['level'] >= 3 then
                WarriorAbilityTable[2014] = nil -- 设置数据为空
            end
        end,

        ['命源'] = function()
            WarriorAbilityTable[2015]['level'] =
                WarriorAbilityTable[2015]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2015
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2015]['level']
            if WarriorAbilityTable[2015]['level'] >= 3 then
                WarriorAbilityTable[2015] = nil -- 设置数据为空
            end
        end,

        ['乱舞震荡'] = function()
            WarriorAbilityTable[2016]['level'] =
                WarriorAbilityTable[2016]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2016
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2016]['level']
            if WarriorAbilityTable[2016]['level'] >= 3 then
                WarriorAbilityTable[2016] = nil -- 设置数据为空
            end
        end,

        ['亢奋'] = function()
            WarriorAbilityTable[2017]['level'] =
                WarriorAbilityTable[2017]['level'] + 1
            UpgradeAbilityInfo.ability_id = 2017
            UpgradeAbilityInfo.ability_level =
                WarriorAbilityTable[2017]['level']
            if WarriorAbilityTable[2017]['level'] >= 3 then
                WarriorAbilityTable[2017] = nil -- 设置数据为空
            end
        end

    }

    local UpgradeAbility = switch[bind_AbilitySelection003.text]
    if UpgradeAbility then UpgradeAbility() end

    print(bind_AbilitySelection003.text)
    base.game:server 'UpgradeAbility'(UpgradeAbilityInfo) -- 给服务器发消息，UpgradeAbility事件，秘籍升级
    bind_AbilitySelection001.showLabel = false
    bind_AbilitySelection002.showLabel = false
    base.wait(1000, function() bind_AbilitySelection003.showLabel = false end)
end

-- --[[base.proto.LevelUp = -- UI接收服务器消息
-- function(table)
--     bind_AbilitySelection001.showLabel = true
--     bind_AbilitySelection002.showLabel = true
--     bind_AbilitySelection003.showLabel = true

-- end--]]
