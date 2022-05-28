-- ========================================================================
-- 【记录配置文件($$default_units_优先上次施法的目标)】
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
                local last_target = base.skill_get_last_target_unit(base.eff_param_get_skill(效果节点))
                if 单位A == 单位B then
                    return 0
                elseif 单位A == last_target then
                    return - 1
                elseif 单位B == last_target then
                    return 1
                else
                    return 0
                end
                return 0
            end
            return func
        end)(),
        ['Name'] = '优先上次施法的目标',
        ['ID'] = 'root',
        ['Class'] = 'func_ref',
        ['NodeType'] = 'FuncRefSortUnit',
        ['Template'] = 'FuncRefSortUnit',
        ['Link'] = '$$default_units.func_ref.优先上次施法的目标.root',
        ['user_data'] = user_data['$$default_units.func_ref.优先上次施法的目标'],
        ['event'] = event_register
    },
}

return mt