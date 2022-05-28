local button = base.ui.panel {
    layout = {
        width = 100,
        height = 100,
        col_self = 'start',
        relative = {900, 300}
    },
    show = true,
    image = 'image/弹窗.png',
    bind = {show = 'showButton'},

    base.ui.button {
        layout = {
            width = 100,
            height = 100,
            col_self = 'start',
            relative = {0, 0}
        },
        font = {size = 22, color = 'e0bad', bold = 2},
        bind = {event = {on_click = 'ClickButton'}}
    },

    base.ui.label {
        text = 'Talent',
        layout = {
            width = 100,
            height = 100,
            col_self = 'start',
            relative = {0, 0}
        },
        font = {size = 20, color = 'e0bad', bold = 5},
    }

}

local ui, bind = base.ui.create(button)

base.proto.showTalentTree = -- UI接收服务器消息，接收showTalentTree消息
function(table)
    bind.showButton = true
    --    bind.text = table[1]
end

bind.ClickButton = function() -- 点击事件
    print('Clicked!')

    bind.showButton = false
    bind_TalentFrame.showFrame = true

    local player = base.player(1)
    local hero = player:get_hero()
    local hero_name = hero:get_name()

    if hero_name == '$$.unit.hero001.root' then -- 法师
        bind_MageTalentTree.showTalentTree = true
    end

    if hero_name == '$$.unit.hero002.root' then -- 战士
        bind_WarriorTalentTree.showTalentTree = true
    end
end
