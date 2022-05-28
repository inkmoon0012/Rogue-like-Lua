local defaultui = require '@defaultui.main'

local template = base.ui.label {
    show = true,
    layout = {
        width = 600,
        height = 120,
        col_self = 'start',
        relative = {0, 100}
    },
    font = {size = 22, color = 'e0bad', bold = 2},
    image = 'image/弹窗.png',
    text = '欢迎来到本游戏！',
    bind = {
        show = 'showLabel',
        event = {on_click = 'ClickLabel'},
        text = 'Labeltext'
    }

}

player_index = 1

local ui, bind = base.ui.create(template) -- Create Label
print 'Label Created'

base.wait(5000, function() bind.showLabel = false end)

bind.ClickLabel = function()
    print('Label Clicked')
    bind.showLabel = false
end
