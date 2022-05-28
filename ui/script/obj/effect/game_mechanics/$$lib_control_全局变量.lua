-- ========================================================================
-- 【记录配置文件($$lib_control_全局变量)】
-- 说明：游戏机制所属的全部记录，除下面列出的记录外，响应记录树中还可以包含公共记录的根记录记录(common.xxx.xxx)。响应记录树所属记录只可以继承来自记录模板的记录记录（template.xxx）。特殊标记：1、#NIL代表强制赋值为nil，无视继承值。
-- ========================================================================

local user_data = require 'obj.effect.user_data'
local event_register = base.event_register
local mt = {
    ['root'] = {
        ['Description'] = nil,
        ['LevelTemplate'] = nil,
        ['Name'] = '全局变量',
        ['Tag'] = {
            [1] = '无',
        },
        ['Text'] = '激活移动摇杆<node-value node="$$.link_node.激活移动摇杆.root" field="Game.Value"/>\r\n激活技能摇杆<node-value node="$$.link_node.激活技能摇杆.root" field="Game.Value"/>\r\n摄像机跟随主控<node-value node="$$.link_node.摄像机跟随主控.root" field="Game.Value"/>\r\n缓速移动区间<node-value node="$$.link_node.移动摇杆参数.LinkNodeNumber_1" field="Game.Value"/>\r\n缓速移动比例<node-value node="$$.link_node.移动摇杆参数.LinkNodeNumber_2" field="Game.Value"/>',
        ['ID'] = 'root',
        ['Class'] = 'game_mechanics',
        ['NodeType'] = 'GameMechanics',
        ['Template'] = 'GameMechanics',
        ['Link'] = '$$lib_control.game_mechanics.全局变量.root',
        ['user_data'] = user_data['$$lib_control.game_mechanics.全局变量'],
        ['event'] = event_register
    },
}

return mt