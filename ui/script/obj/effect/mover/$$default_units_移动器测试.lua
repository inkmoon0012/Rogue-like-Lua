-- ========================================================================
-- 【记录配置文件($$default_units_移动器测试)】
-- 说明：移动器所属的全部记录，除下面列出的记录外，响应记录树中还可以包含公共记录的根记录记录(common.xxx.xxx)。响应记录树所属记录只可以继承来自记录模板的记录记录（template.xxx）。特殊标记：1、#NIL代表强制赋值为nil，无视继承值。
-- ========================================================================

local user_data = require 'obj.effect.user_data'
local event_register = base.event_register
local mt = {
    ['root'] = {
        ['Name'] = '移动器测试',
        ['accel'] = 2000,
        ['height'] = 10,
        ['hit_area'] = (function ()
            local func = function (ref_param)
                return 10
            end
            return func
        end)(),
        ['hit_same'] = false,
        ['hit_type'] = '全部',
        ['max_speed'] = 200000,
        ['min_speed'] = 0,
        ['model'] = '',
        ['parabola_height'] = 0,
        ['passive'] = false,
        ['speed'] = 1050,
        ['tangent_direction'] = false,
        ['ID'] = 'root',
        ['Class'] = 'mover',
        ['NodeType'] = 'MoverTo',
        ['Template'] = 'MoverTo',
        ['Link'] = '$$default_units.mover.移动器测试.root',
        ['user_data'] = user_data['$$default_units.mover.移动器测试'],
        ['event'] = event_register
    },
}

return mt