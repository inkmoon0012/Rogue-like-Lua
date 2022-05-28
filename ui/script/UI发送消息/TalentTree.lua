local defaultui = require '@defaultui.main'

local TalentFrame = base.ui.panel {
    z_index = 2,
    show = false,
    layout = {
        width = 500,
        height = 700,
        col_self = 'start',
        relative = {0, 200}
    },
    image = 'image/弹窗.png',
    bind = {show = 'showFrame'},
    base.ui.label {
        text = 'X', -- 关闭按钮
        layout = {
            width = 60,
            height = 60,
            col_self = 'start',
            relative = {220, 0}
        },
        image = 'image/弹窗.png',
        font = {size = 25, color = 'e0bad', bold = 5},
        bind = {event = {on_click = 'ClickClose'}}
    },
    base.ui.label {
        text = 'souls', -- 灵魂积分数值
        layout = {
            width = 50,
            height = 50,
            col_self = 'start',
            relative = {200, 600}
        },
        image = 'image/弹窗.png',
        font = {size = 20, color = 'e0bad', bold = 3},
        bind = {text = 'souls_text'}
    },
    base.ui.label {
        text = '灵魂积分：', -- 灵魂积分文字
        layout = {
            width = 100,
            height = 50,
            col_self = 'start',
            relative = {120, 600}
        },
        image = 'image/弹窗.png',
        font = {size = 20, color = 'e0bad', bold = 3}
    },
    base.ui.label {
        text = '重置天赋', -- 重置积分
        layout = {
            width = 100,
            height = 50,
            col_self = 'start',
            relative = {-180, 600}
        },
        image = 'image/弹窗.png',
        font = {size = 20, color = 'e0bad', bold = 3},
        bind = {event = {on_click = 'ClickReset'}}
    }
}

-- 法师天赋树
local MageTalentTree = base.ui.panel {
    z_index = 10,
    show = false,
    layout = {width = 0, height = 0, col_self = 'start', relative = {0, 200}},
    bind = {text = 'text', show = 'showTalentTree'},

    base.ui.label {
        text = '火焰亲和', -- 天赋001
        layout = {
            width = 80,
            height = 80,
            col_self = 'start',
            relative = {-120, 50}
        },
        image = 'image/弹窗.png',
        font = {size = 15, color = 'e0bad', bold = 2},
        bind = {event = {on_click = 'ClickTalent001'}}
    },
    base.ui.label {
        text = 'level', -- 天赋001等级
        layout = {
            width = 25,
            height = 25,
            col_self = 'start',
            relative = {-100, 100}
        },
        image = 'image/弹窗.png',
        font = {size = 20, color = 'e0bad', bold = 2},
        bind = {text = 'text001'}
    },
    base.ui.label {
        text = '不屈意志', -- 天赋002
        layout = {
            width = 80,
            height = 80,
            col_self = 'start',
            relative = {0, 50}
        },
        image = 'image/弹窗.png',
        font = {size = 15, color = 'e0bad', bold = 2},
        bind = {event = {on_click = 'ClickTalent002'}}
    },
    base.ui.label {
        text = 'level', -- 天赋002等级
        layout = {
            width = 25,
            height = 25,
            col_self = 'start',
            relative = {20, 100}
        },
        image = 'image/弹窗.png',
        font = {size = 20, color = 'e0bad', bold = 2},
        bind = {text = 'text002'}
    },
    base.ui.label {
        text = '冰冷之心', -- 天赋003
        layout = {
            width = 80,
            height = 80,
            col_self = 'start',
            relative = {120, 50}
        },
        image = 'image/弹窗.png',
        font = {size = 15, color = 'e0bad', bold = 2},
        bind = {event = {on_click = 'ClickTalent003'}}
    },
    base.ui.label {
        text = 'level', -- 天赋003等级
        layout = {
            width = 25,
            height = 25,
            col_self = 'start',
            relative = {140, 100}
        },
        image = 'image/弹窗.png',
        font = {size = 20, color = 'e0bad', bold = 2},
        bind = {text = 'text003'}
    },
    base.ui.label {
        text = '强化火球术', -- 天赋004
        layout = {
            width = 80,
            height = 80,
            col_self = 'start',
            relative = {-180, 180}
        },
        image = 'image/弹窗.png',
        font = {size = 15, color = 'e0bad', bold = 2},
        bind = {event = {on_click = 'ClickTalent004'}}
    },
    base.ui.label {
        text = 'level', -- 天赋004等级
        layout = {
            width = 25,
            height = 25,
            col_self = 'start',
            relative = {-160, 230}
        },
        image = 'image/弹窗.png',
        font = {size = 20, color = 'e0bad', bold = 2},
        bind = {text = 'text004'}
    },
    base.ui.label {
        text = '强化灼烧', -- 天赋005
        layout = {
            width = 80,
            height = 80,
            col_self = 'start',
            relative = {-60, 180}
        },
        image = 'image/弹窗.png',
        font = {size = 15, color = 'e0bad', bold = 2},
        bind = {event = {on_click = 'ClickTalent005'}}
    },
    base.ui.label {
        text = 'level', -- 天赋005等级
        layout = {
            width = 25,
            height = 25,
            col_self = 'start',
            relative = {-40, 230}
        },
        image = 'image/弹窗.png',
        font = {size = 20, color = 'e0bad', bold = 2},
        bind = {text = 'text005'}
    },
    base.ui.label {
        text = '寒冰增效', -- 天赋006
        layout = {
            width = 80,
            height = 80,
            col_self = 'start',
            relative = {60, 180}
        },
        image = 'image/弹窗.png',
        font = {size = 15, color = 'e0bad', bold = 2},
        bind = {event = {on_click = 'ClickTalent006'}}
    },
    base.ui.label {
        text = 'level', -- 天赋006等级
        layout = {
            width = 25,
            height = 25,
            col_self = 'start',
            relative = {80, 230}
        },
        image = 'image/弹窗.png',
        font = {size = 20, color = 'e0bad', bold = 2},
        bind = {text = 'text006'}
    },
    base.ui.label {
        text = '强化寒冰箭', -- 天赋007
        layout = {
            width = 80,
            height = 80,
            col_self = 'start',
            relative = {180, 180}
        },
        image = 'image/弹窗.png',
        font = {size = 15, color = 'e0bad', bold = 2},
        bind = {event = {on_click = 'ClickTalent007'}}
    },
    base.ui.label {
        text = 'level', -- 天赋007等级
        layout = {
            width = 25,
            height = 25,
            col_self = 'start',
            relative = {200, 230}
        },
        image = 'image/弹窗.png',
        font = {size = 20, color = 'e0bad', bold = 2},
        bind = {text = 'text007'}
    }

}

-- 战士天赋树
local WarriorTalentTree = base.ui.panel {
    z_index = 10,
    show = false,
    layout = {width = 0, height = 0, col_self = 'start', relative = {0, 200}},
    bind = {text = 'text', show = 'showTalentTree'},

    base.ui.label {
        text = '武力压制', -- 天赋001
        layout = {
            width = 80,
            height = 80,
            col_self = 'start',
            relative = {-120, 50}
        },
        image = 'image/弹窗.png',
        font = {size = 15, color = 'e0bad', bold = 2},
        bind = {event = {on_click = 'ClickTalent001'}}
    },
    base.ui.label {
        text = 'level', -- 天赋001等级
        layout = {
            width = 25,
            height = 25,
            col_self = 'start',
            relative = {-100, 100}
        },
        image = 'image/弹窗.png',
        font = {size = 20, color = 'e0bad', bold = 2},
        bind = {text = 'text001'}
    },
    base.ui.label {
        text = '不屈意志', -- 天赋002
        layout = {
            width = 80,
            height = 80,
            col_self = 'start',
            relative = {0, 50}
        },
        image = 'image/弹窗.png',
        font = {size = 15, color = 'e0bad', bold = 2},
        bind = {event = {on_click = 'ClickTalent002'}}
    },
    base.ui.label {
        text = 'level', -- 天赋002等级
        layout = {
            width = 25,
            height = 25,
            col_self = 'start',
            relative = {20, 100}
        },
        image = 'image/弹窗.png',
        font = {size = 20, color = 'e0bad', bold = 2},
        bind = {text = 'text002'}
    },
    base.ui.label {
        text = '冲动', -- 天赋003
        layout = {
            width = 80,
            height = 80,
            col_self = 'start',
            relative = {120, 50}
        },
        image = 'image/弹窗.png',
        font = {size = 15, color = 'e0bad', bold = 2},
        bind = {event = {on_click = 'ClickTalent003'}}
    },
    base.ui.label {
        text = 'level', -- 天赋003等级
        layout = {
            width = 25,
            height = 25,
            col_self = 'start',
            relative = {140, 100}
        },
        image = 'image/弹窗.png',
        font = {size = 20, color = 'e0bad', bold = 2},
        bind = {text = 'text003'}
    },
    base.ui.label {
        text = '动脉打击', -- 天赋004
        layout = {
            width = 80,
            height = 80,
            col_self = 'start',
            relative = {-180, 180}
        },
        image = 'image/弹窗.png',
        font = {size = 15, color = 'e0bad', bold = 2},
        bind = {event = {on_click = 'ClickTalent004'}}
    },
    base.ui.label {
        text = 'level', -- 天赋004等级
        layout = {
            width = 25,
            height = 25,
            col_self = 'start',
            relative = {-160, 230}
        },
        image = 'image/弹窗.png',
        font = {size = 20, color = 'e0bad', bold = 2},
        bind = {text = 'text004'}
    },
    base.ui.label {
        text = '月光斩', -- 天赋005
        layout = {
            width = 80,
            height = 80,
            col_self = 'start',
            relative = {-60, 180}
        },
        image = 'image/弹窗.png',
        font = {size = 15, color = 'e0bad', bold = 2},
        bind = {event = {on_click = 'ClickTalent005'}}
    },
    base.ui.label {
        text = 'level', -- 天赋005等级
        layout = {
            width = 25,
            height = 25,
            col_self = 'start',
            relative = {-40, 230}
        },
        image = 'image/弹窗.png',
        font = {size = 20, color = 'e0bad', bold = 2},
        bind = {text = 'text005'}
    },
    base.ui.label {
        text = '逐日剑法', -- 天赋006
        layout = {
            width = 80,
            height = 80,
            col_self = 'start',
            relative = {60, 180}
        },
        image = 'image/弹窗.png',
        font = {size = 15, color = 'e0bad', bold = 2},
        bind = {event = {on_click = 'ClickTalent006'}}
    },
    base.ui.label {
        text = 'level', -- 天赋006等级
        layout = {
            width = 25,
            height = 25,
            col_self = 'start',
            relative = {80, 230}
        },
        image = 'image/弹窗.png',
        font = {size = 20, color = 'e0bad', bold = 2},
        bind = {text = 'text006'}
    },
    base.ui.label {
        text = '致命打击', -- 天赋007
        layout = {
            width = 80,
            height = 80,
            col_self = 'start',
            relative = {180, 180}
        },
        image = 'image/弹窗.png',
        font = {size = 15, color = 'e0bad', bold = 2},
        bind = {event = {on_click = 'ClickTalent007'}}
    },
    base.ui.label {
        text = 'level', -- 天赋007等级
        layout = {
            width = 25,
            height = 25,
            col_self = 'start',
            relative = {200, 230}
        },
        image = 'image/弹窗.png',
        font = {size = 20, color = 'e0bad', bold = 2},
        bind = {text = 'text007'}
    }

}

ui, bind_TalentFrame = base.ui.create(TalentFrame)
ui, bind_MageTalentTree = base.ui.create(MageTalentTree)
ui, bind_WarriorTalentTree = base.ui.create(WarriorTalentTree)

bind_TalentFrame.ClickClose = function() -- 关闭天赋窗口
    bind_TalentFrame.showFrame = false
    bind_MageTalentTree.showTalentTree = false
    bind_WarriorTalentTree.showTalentTree = false
    print('Talent Closed')
end

local UpgradeTalentInfo = {talent_id = 0, talent_level = 0}

-- 法师天赋树
bind_MageTalentTree.ClickTalent001 = function()
    MageTalentTable[10001]['level'] = MageTalentTable[10001]['level'] + 1 -- 10001天赋等级加1，并赋值给天赋表
    UpgradeTalentInfo.talent_id = 10001 -- 天赋升级信息
    UpgradeTalentInfo.talent_level = MageTalentTable[10001]['level']
    bind_MageTalentTree.text001 = UpgradeTalentInfo.talent_level
    print("talent level is " .. MageTalentTable[10001]['level'])

    base.game:server 'UpgradeTalent'(UpgradeTalentInfo) -- 给服务器发消息，UpgradeTalent事件，参数为升级信息
end

bind_MageTalentTree.ClickTalent002 = function()
    MageTalentTable[10002]['level'] = MageTalentTable[10002]['level'] + 1
    UpgradeTalentInfo.talent_id = 10002 -- 天赋升级信息
    UpgradeTalentInfo.talent_level = MageTalentTable[10002]['level']
    bind_MageTalentTree.text002 = UpgradeTalentInfo.talent_level
    print("talent level is " .. MageTalentTable[10002]['level'])

    base.game:server 'UpgradeTalent'(UpgradeTalentInfo) -- 给服务器发消息，UpgradeTalent事件，参数为升级信息
end

bind_MageTalentTree.ClickTalent003 = function()
    MageTalentTable[10003]['level'] = MageTalentTable[10003]['level'] + 1
    UpgradeTalentInfo.talent_id = 10003 -- 天赋升级信息
    UpgradeTalentInfo.talent_level = MageTalentTable[10003]['level']
    bind_MageTalentTree.text003 = UpgradeTalentInfo.talent_level
    print("talent level is " .. MageTalentTable[10003]['level'])

    base.game:server 'UpgradeTalent'(UpgradeTalentInfo) -- 给服务器发消息，UpgradeTalent事件，参数为升级信息
end

bind_MageTalentTree.ClickTalent004 = function()
    MageTalentTable[10004]['level'] = MageTalentTable[10004]['level'] + 1
    UpgradeTalentInfo.talent_id = 10004 -- 天赋升级信息
    UpgradeTalentInfo.talent_level = MageTalentTable[10004]['level']
    bind_MageTalentTree.text004 = UpgradeTalentInfo.talent_level
    print("talent level is " .. MageTalentTable[10004]['level'])

    base.game:server 'UpgradeTalent'(UpgradeTalentInfo) -- 给服务器发消息，UpgradeTalent事件，参数为升级信息
end

bind_MageTalentTree.ClickTalent005 = function()
    MageTalentTable[10005]['level'] = MageTalentTable[10005]['level'] + 1
    UpgradeTalentInfo.talent_id = 10005 -- 天赋升级信息
    UpgradeTalentInfo.talent_level = MageTalentTable[10005]['level']
    bind_MageTalentTree.text005 = UpgradeTalentInfo.talent_level
    print("talent level is " .. MageTalentTable[10005]['level'])

    base.game:server 'UpgradeTalent'(UpgradeTalentInfo) -- 给服务器发消息，UpgradeTalent事件，参数为升级信息
end

bind_MageTalentTree.ClickTalent006 = function()
    MageTalentTable[10006]['level'] = MageTalentTable[10006]['level'] + 1
    UpgradeTalentInfo.talent_id = 10006 -- 天赋升级信息
    UpgradeTalentInfo.talent_level = MageTalentTable[10006]['level']
    bind_MageTalentTree.text006 = UpgradeTalentInfo.talent_level
    print("talent level is " .. MageTalentTable[10006]['level'])

    base.game:server 'UpgradeTalent'(UpgradeTalentInfo) -- 给服务器发消息，UpgradeTalent事件，参数为升级信息
end

bind_MageTalentTree.ClickTalent007 = function()
    MageTalentTable[10007]['level'] = MageTalentTable[10007]['level'] + 1
    UpgradeTalentInfo.talent_id = 10007 -- 天赋升级信息
    UpgradeTalentInfo.talent_level = MageTalentTable[10007]['level']
    bind_MageTalentTree.text007 = UpgradeTalentInfo.talent_level
    print("talent level is " .. MageTalentTable[10007]['level'])

    base.game:server 'UpgradeTalent'(UpgradeTalentInfo) -- 给服务器发消息，UpgradeTalent事件，参数为升级信息
end

base.proto.update_souls = function(data) -- 接收服务器 更新灵魂 事件
    local map_score_souls = data.souls
    bind_TalentFrame.souls_text = map_score_souls
    print('souls score is' .. map_score_souls)
end

base.proto.update_talent_tree =
    function(data) -- 接收服务器 更新天赋树 事件
        local talent_tree = data.talent_tree
        local player = base.player(1)
        local hero = player:get_hero()
        local hero_name = hero:get_name()

        if hero_name == '$$.unit.hero001.root' then -- 法师
            MageTalentTable[10001]['level'] = talent_tree.talent10001
            bind_MageTalentTree.text001 = talent_tree.talent10001
            MageTalentTable[10002]['level'] = talent_tree.talent10002
            bind_MageTalentTree.text002 = talent_tree.talent10002
            MageTalentTable[10003]['level'] = talent_tree.talent10003
            bind_MageTalentTree.text003 = talent_tree.talent10003
            MageTalentTable[10004]['level'] = talent_tree.talent10004
            bind_MageTalentTree.text004 = talent_tree.talent10004
            MageTalentTable[10005]['level'] = talent_tree.talent10005
            bind_MageTalentTree.text005 = talent_tree.talent10005
            MageTalentTable[10006]['level'] = talent_tree.talent10006
            bind_MageTalentTree.text006 = talent_tree.talent10006
            MageTalentTable[10007]['level'] = talent_tree.talent01007
            bind_MageTalentTree.text007 = talent_tree.talent10007
        end

        if hero_name == '$$.unit.hero002.root' then -- 战士
            WarriorTalentTable[20001]['level'] = talent_tree.talent20001
            bind_WarriorTalentTree.text001 = talent_tree.talent20001
            WarriorTalentTable[20002]['level'] = talent_tree.talent20002
            bind_WarriorTalentTree.text002 = talent_tree.talent20002
            WarriorTalentTable[20003]['level'] = talent_tree.talent20003
            bind_WarriorTalentTree.text003 = talent_tree.talent20003
            WarriorTalentTable[20004]['level'] = talent_tree.talent20004
            bind_WarriorTalentTree.text004 = talent_tree.talent20004
            WarriorTalentTable[20005]['level'] = talent_tree.talent20005
            bind_WarriorTalentTree.text005 = talent_tree.talent20005
            WarriorTalentTable[20006]['level'] = talent_tree.talent20006
            bind_WarriorTalentTree.text006 = talent_tree.talent20006
            WarriorTalentTable[20007]['level'] = talent_tree.talent20007
            bind_WarriorTalentTree.text007 = talent_tree.talent20007
        end

        print('talent_tree updated')
    end

bind_TalentFrame.ClickReset = function()
    local talent_tree_reset = {
        talent10001 = 0,
        talent10002 = 0,
        talent10003 = 0,
        talent10004 = 0,
        talent10005 = 0,
        talent10006 = 0,
        talent10007 = 0,
        talent20001 = 0,
        talent20002 = 0,
        talent20003 = 0,
        talent20004 = 0,
        talent20005 = 0,
        talent20006 = 0,
        talent20007 = 0
    }

    local player = base.player(1)
    local hero = player:get_hero()
    local hero_name = hero:get_name()

    if hero_name == '$$.unit.hero001.root' then
        bind_MageTalentTree.text001 = 0
        bind_MageTalentTree.text002 = 0
        bind_MageTalentTree.text003 = 0
        bind_MageTalentTree.text004 = 0
        bind_MageTalentTree.text005 = 0
        bind_MageTalentTree.text006 = 0
        bind_MageTalentTree.text007 = 0
        MageTalentTable[10001]['level'] = 0
        MageTalentTable[10002]['level'] = 0
        MageTalentTable[10003]['level'] = 0
        MageTalentTable[10004]['level'] = 0
        MageTalentTable[10005]['level'] = 0
        MageTalentTable[10006]['level'] = 0
        MageTalentTable[10007]['level'] = 0
    end

    if hero_name == '$$.unit.hero002.root' then
        bind_WarriorTalentTree.text001 = 0
        bind_WarriorTalentTree.text002 = 0
        bind_WarriorTalentTree.text003 = 0
        bind_WarriorTalentTree.text004 = 0
        bind_WarriorTalentTree.text005 = 0
        bind_WarriorTalentTree.text006 = 0
        bind_WarriorTalentTree.text007 = 0
        WarriorTalentTable[20001]['level'] = 0
        WarriorTalentTable[20002]['level'] = 0
        WarriorTalentTable[20003]['level'] = 0
        WarriorTalentTable[20004]['level'] = 0
        WarriorTalentTable[20005]['level'] = 0
        WarriorTalentTable[20006]['level'] = 0
        WarriorTalentTable[20007]['level'] = 0
    end
    base.game:server 'ResetTalent'(talent_tree_reset)
end

