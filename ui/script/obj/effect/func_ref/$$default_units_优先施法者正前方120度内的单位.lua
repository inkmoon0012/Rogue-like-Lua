-- ========================================================================
-- 【记录配置文件($$default_units_优先施法者正前方120度内的单位)】
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
                local result = 0
                local caster = base.eff_param_caster(效果节点)
                local casterPoint = base.unit_get_point(caster)
                local casterFacing = base.unit_get_facing(caster)
                local angleA = base.point_angle(casterPoint, base.unit_get_point(单位A))
                local angleB = base.point_angle(casterPoint, base.unit_get_point(单位B))
                local AisIn = math.abs(angleA - casterFacing) <= 60
                local BisIn = math.abs(angleB - casterFacing) <= 60
                if 单位A == 单位B then
                    return 0
                elseif AisIn == true and BisIn == true then
                    return 0
                elseif AisIn == true then
                    return - 1
                else
                    return 1
                end
                return result
            end
            return func
        end)(),
        ['Name'] = '优先施法者正前方120度内的单位',
        ['ID'] = 'root',
        ['Class'] = 'func_ref',
        ['NodeType'] = 'FuncRefSortUnit',
        ['Template'] = 'FuncRefSortUnit',
        ['Link'] = '$$default_units.func_ref.优先施法者正前方120度内的单位.root',
        ['user_data'] = user_data['$$default_units.func_ref.优先施法者正前方120度内的单位'],
        ['event'] = event_register
    },
}

return mt