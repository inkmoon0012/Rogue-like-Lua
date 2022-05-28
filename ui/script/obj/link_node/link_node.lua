-- ========================================================================
-- 【LinkNode配置文件】
-- ========================================================================

local mt = {
    ['$$default_units.spell.闪电链.LinkNodeNumber_1'] = 0,
    ['$$lib_control.link_node.摄像机跟随主控.root'] = true,
    ['$$lib_control.link_node.激活技能摇杆.root'] = true,
    ['$$lib_control.link_node.激活移动摇杆.root'] = true,
    ['$$lib_control.link_node.移动摇杆参数.LinkNodeNumber_1'] = 0.5,
    ['$$lib_control.link_node.移动摇杆参数.LinkNodeNumber_2'] = 0.35,
    ['$$lib_control.link_node.移动摇杆参数.root'] = (function ()
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
    ['$$lib_upgrade.link_node.经验表.root'] = {
            [1] = 100,
            [2] = 200,
            [3] = 300,
            [4] = 400,
            [5] = 500,
            [6] = 600,
        },
}

return mt