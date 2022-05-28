-- ========================================================================
-- 【记录配置文件($$default_units_nearest_unit_to_caster)】
-- 说明：函数引用所属的全部记录，除下面列出的记录外，响应记录树中还可以包含公共记录的根记录记录(common.xxx.xxx)。响应记录树所属记录只可以继承来自记录模板的记录记录（template.xxx）。特殊标记：1、#NIL代表强制赋值为nil，无视继承值。
-- ========================================================================

local user_data = require 'obj.effect.user_data'
local event_register = base.event_register
local mt = {
    ['root'] = {
        ['Backward'] = nil,
        ['Func'] = (function ()
                        --- lua_plus ---
            local function func(效果节点, 单位A, 单位B)
                local 施法者位置 = base.unit_get_point(base.eff_param_caster(效果节点))
                local 距离A = base.point_distance(施法者位置, base.unit_get_point(单位A)) - base.unit_get_attackable_radius(单位A)
                local 距离B = base.point_distance(施法者位置, base.unit_get_point(单位B)) - base.unit_get_attackable_radius(单位B)
                local result = 距离A - 距离B
                return result
            end
            return func
        end)(),
        ['Name'] = '距离施法者最近的单位',
        ['ID'] = 'root',
        ['Class'] = 'func_ref',
        ['NodeType'] = 'FuncRefSortUnit',
        ['Template'] = 'FuncRefSortUnit',
        ['Link'] = '$$default_units.func_ref.nearest_unit_to_caster.root',
        ['user_data'] = user_data['$$default_units.func_ref.nearest_unit_to_caster'],
        ['event'] = event_register
    },
}

return mt