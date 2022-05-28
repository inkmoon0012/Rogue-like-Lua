-- ========================================================================
-- 【记录配置文件($$default_units_lowest_health_rate_unit)】
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
                local 血量A = base.unit_get_attribute(单位A, "生命") / base.unit_get_attribute(单位A, "生命上限")
                local 血量B = base.unit_get_attribute(单位B, "生命") / base.unit_get_attribute(单位B, "生命上限")
                local result = 血量A - 血量B
                return result
            end
            return func
        end)(),
        ['Name'] = '生命值百分比最低的单位',
        ['ID'] = 'root',
        ['Class'] = 'func_ref',
        ['NodeType'] = 'FuncRefSortUnit',
        ['Template'] = 'FuncRefSortUnit',
        ['Link'] = '$$default_units.func_ref.lowest_health_rate_unit.root',
        ['user_data'] = user_data['$$default_units.func_ref.lowest_health_rate_unit'],
        ['event'] = event_register
    },
}

return mt