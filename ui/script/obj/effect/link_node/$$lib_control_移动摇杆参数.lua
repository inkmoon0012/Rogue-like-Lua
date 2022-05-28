-- ========================================================================
-- 【记录配置文件($$lib_control_移动摇杆参数)】
-- 说明：数据表所属的全部记录，除下面列出的记录外，响应记录树中还可以包含公共记录的根记录记录(common.xxx.xxx)。响应记录树所属记录只可以继承来自记录模板的记录记录（template.xxx）。特殊标记：1、#NIL代表强制赋值为nil，无视继承值。
-- ========================================================================

local user_data = require 'obj.effect.user_data'
local event_register = base.event_register
local mt = {
    ['LinkNodeNumber_1'] = 0.5,
    ['LinkNodeNumber_2'] = 0.35,
    ['root'] = (function ()
        local nodes = {}
        -- 移动摇杆参数[$$lib_control.link_node.移动摇杆参数.root]
        nodes[1] = {}
        -- 摇杆缓动区间[$$lib_control.link_node.移动摇杆参数.LinkNodeNumber_1]
        nodes[2] = 0.5
        -- 缓动比例[$$lib_control.link_node.移动摇杆参数.LinkNodeNumber_2]
        nodes[3] = 0.35

        -- 填充移动摇杆参数[$$lib_control.link_node.移动摇杆参数.root]
        nodes[1]['摇杆缓动区间'] = nodes[2]
        nodes[1]['缓动比例'] = nodes[3]

        return nodes[1]
    end)(),
}

return mt