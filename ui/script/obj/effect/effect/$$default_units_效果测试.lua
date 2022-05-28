-- ========================================================================
-- 【记录配置文件($$default_units_效果测试)】
-- 说明：公共所属的全部记录，除下面列出的记录外，公共记录树中还可以包含其它公共记录的根记录记录(common.xxx.xxx)。公共记录树所属记录只可以继承来自记录模板的记录记录（template.xxx）。特殊标记：1、#NIL代表强制赋值为nil，无视继承值。
-- ========================================================================

local user_data = require 'obj.effect.user_data'
local event_register = base.event_register
local mt = {
    ['root'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['ImpactActors'] = {
        },
        ['ImpactEffect'] = '',
        ['ImpactMaxCount'] = (function ()
            local func = function (ref_param)
                return -1
            end
            return func
        end)(),
        ['ImpactSearchFilter'] = '敌方,单位;无敌,死亡',
        ['Mover'] = '$$default_units.mover.移动器测试.root',
        ['MoverTarget'] = {
            ['Effect'] = '',
            ['LocalVar'] = 'A',
            ['Value'] = 'Default',
        },
        ['Name'] = '效果测试',
        ['ResponseFlags'] = {
            ['Acquire'] = false,
            ['Flee'] = false,
        },
        ['SuppressValidatorFailOutput'] = false,
        ['TargetLocation'] = {
            ['Effect'] = '',
            ['LocalVar'] = 'A',
            ['Value'] = 'Default',
        },
        ['TargetType'] = 'Unit',
        ['UnitLocalVar'] = '',
        ['Validators'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 0
                return result
            end
            return func
        end)(),
        ['temp_impact_model'] = '',
        ['ID'] = 'root',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectUnitApplyMover',
        ['Template'] = 'EffectUnitApplyMover',
        ['Link'] = '$$default_units.effect.效果测试.root',
        ['user_data'] = user_data['$$default_units.effect.效果测试'],
        ['event'] = event_register
    },
}

return mt