-- ========================================================================
-- 【记录配置文件($$_炙烤)】
-- 说明：Buff所属的全部记录，除下面列出的记录外，Buff记录树中还可以包含公共记录的根记录记录(common.xxx.xxx)。Buff记录树所属记录只可以继承来自记录模板的记录记录（template.xxx）。特殊标记：1、#NIL代表强制赋值为nil，无视继承值。
-- ========================================================================

local user_data = require 'obj.effect.user_data'
local event_register = base.event_register
local mt = {
    ['ActorModel_1'] = {
        ['AutoScale'] = false,
        ['CreationFilter'] = {
            ['Ally'] = true,
            ['Enemy'] = true,
            ['Self'] = true,
        },
        ['EventCreation'] = 'on_cast_start',
        ['EventCreationModel'] = '',
        ['EventDestruction'] = 'on_cast_stop',
        ['EventDestructionModel'] = 'Death',
        ['FollowRotation'] = 1,
        ['ForceOneShot'] = 0,
        ['Model'] = '$$.buff.炙烤.Model_1',
        ['Name'] = '模型表现节点（持续性）_1',
        ['Offset'] = {
            ['X'] = 0,
            ['Y'] = 0,
            ['Z'] = 0,
        },
        ['Rotation'] = {
            ['X'] = 0,
            ['Y'] = 0,
            ['Z'] = 0,
        },
        ['Scale'] = 1,
        ['ScaleByParent'] = 1,
        ['ShowShadow'] = true,
        ['SocketName'] = '',
        ['UseRoleSH'] = false,
        ['sync'] = true,
        ['ID'] = 'ActorModel_1',
        ['Class'] = 'actor',
        ['NodeType'] = 'ActorModel',
        ['Template'] = 'ActorModel',
        ['Link'] = '$$.buff.炙烤.ActorModel_1',
        ['user_data'] = user_data['$$.buff.炙烤'],
        ['event'] = event_register
    },
    ['Model_1'] = {
        ['ActorArray'] = nil,
        ['AnimMapping'] = {
        },
        ['Asset'] = 'effect/eff_battle/particle/tongyongtx/ps_xuanyuntx_1/particle.effect',
        ['AutoScaleBaseRadius'] = 128,
        ['BirthStandDeathAnim'] = 'bsd',
        ['Events'] = {
        },
        ['ExtraAnimations'] = {
        },
        ['Name'] = '模型节点_1',
        ['Scale'] = 1,
        ['ID'] = 'Model_1',
        ['Class'] = 'model',
        ['NodeType'] = 'Model',
        ['Template'] = 'Model',
        ['Link'] = '$$.buff.炙烤.Model_1',
        ['user_data'] = user_data['$$.buff.炙烤'],
        ['event'] = event_register
    },
    ['UnitModifyAttribute_1'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['KeyValuePairs'] = {
            [1] = {
                ['Key'] = '移动速度',
                ['Percentage'] = nil,
                ['Random'] = nil,
                ['Value'] = (function ()
                                        --- lua_plus ---
                    --- skip_undefined ---
                    local function func(效果节点)
                        local result = - 100
                        local level = base.unit_get_attribute(base.eff_param_caster(效果节点), "炙烤秘籍")
                        result = - 100 * level
                        return result
                    end
                    return func
                end)(),
            },
        },
        ['ModifyUnitFlags'] = {
            ['IsHeal'] = true,
        },
        ['Name'] = '修改单位自定义属性节点_1',
        ['Operation'] = 'Add',
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
        ['Validators'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 0
                return result
            end
            return func
        end)(),
        ['ID'] = 'UnitModifyAttribute_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectUnitModifyAttribute',
        ['Template'] = 'EffectUnitModifyAttribute',
        ['Link'] = '$$.buff.炙烤.UnitModifyAttribute_1',
        ['user_data'] = user_data['$$.buff.炙烤'],
        ['event'] = event_register
    },
    ['UnitModifyAttribute_1_1'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['KeyValuePairs'] = {
            [1] = {
                ['Key'] = '移动速度',
                ['Percentage'] = nil,
                ['Random'] = nil,
                ['Value'] = (function ()
                                        --- lua_plus ---
                    --- skip_undefined ---
                    local function func(效果节点)
                        local result = 100
                        local level = base.unit_get_attribute(base.eff_param_caster(效果节点), "炙烤秘籍")
                        result = 100 * level
                        return result
                    end
                    return func
                end)(),
            },
        },
        ['ModifyUnitFlags'] = {
            ['IsHeal'] = true,
        },
        ['Name'] = '修改单位自定义属性节点_1',
        ['Operation'] = 'Add',
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
        ['Validators'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 0
                return result
            end
            return func
        end)(),
        ['ID'] = 'UnitModifyAttribute_1_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectUnitModifyAttribute',
        ['Template'] = 'EffectUnitModifyAttribute',
        ['Link'] = '$$.buff.炙烤.UnitModifyAttribute_1_1',
        ['user_data'] = user_data['$$.buff.炙烤'],
        ['event'] = event_register
    },
    ['root'] = {
        ['ActorArray'] = {
            [1] = '$$.buff.炙烤.ActorModel_1',
        },
        ['AddRestrictions'] = {
        },
        ['AnimsReplaceList'] = '',
        ['AttachSound'] = '0',
        ['BuffBarIcon'] = '',
        ['BuffCategoriesDisable'] = {
        },
        ['BuffCategoriesEnable'] = {
        },
        ['BuffEffectDeadShow'] = 1,
        ['BuffFlags'] = {
            ['AllowMultiInstance'] = false,
            ['Channeling'] = false,
            ['DisableWhenDead'] = true,
            ['Permanent'] = false,
            ['SingleInstancePerCaster'] = true,
            ['UseHaste'] = true,
        },
        ['BuffIcon'] = '',
        ['BuffName'] = nil,
        ['BuffType'] = 0,
        ['BuffsDisable'] = {
        },
        ['BuffsEnable'] = {
        },
        ['Categories'] = {
            [1] = '可被禁用',
            [2] = '可被驱散',
        },
        ['ContinueSound'] = '0',
        ['CountMethod'] = 'PerCaster',
        ['CustomClientBuff'] = {
        },
        ['Description'] = '',
        ['DetachSound'] = '0',
        ['Duration'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['DynamicDetachMatElapse'] = 0,
        ['DynamicMatElapse'] = 0,
        ['DynamicMatParamName'] = '',
        ['DynamicMatParamType'] = '',
        ['DynamicMatParamValueEnd'] = '',
        ['DynamicMatParamValueStart'] = '',
        ['DynamicMatPath'] = '',
        ['DynamicMatPriority'] = 1,
        ['DynamicScale'] = 1.0,
        ['DynamicScaleElapse'] = 1.0,
        ['EnableValidator'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 0
                return result
            end
            return func
        end)(),
        ['ExpireEffect'] = '$$.buff.炙烤.UnitModifyAttribute_1_1',
        ['FinalEffect'] = '',
        ['GhostDuraTime'] = 0.5,
        ['GhostEndTime'] = 0.3,
        ['GhostIntervalTime'] = 0.3,
        ['GhostStartTime'] = 0.4,
        ['HideBlood'] = 0,
        ['InitialEffect'] = '$$.buff.炙烤.UnitModifyAttribute_1',
        ['InstanceMax'] = 0,
        ['KeyValuePairs'] = {
            [1] = {
                ['Key'] = '减伤',
                ['Percentage'] = false,
                ['Random'] = 0,
                ['Value'] = (function ()
                                        --- lua_plus ---
                    --- skip_undefined ---
                    local function func(效果节点)
                        local result = 0
                        local level = base.unit_get_attribute(base.eff_param_caster(效果节点), "炙烤秘籍")
                        result = - 0.2 * level
                        return result
                    end
                    return func
                end)(),
            },
        },
        ['KillBuffEffect'] = 1,
        ['ModelTransparent'] = 0,
        ['Name'] = '炙烤',
        ['NeedGhost'] = false,
        ['OnAddBlendTime'] = 1,
        ['OnAddControlElapse'] = 0,
        ['OnAddControlStrength'] = 1,
        ['OnAddParticles'] = {
        },
        ['OnAddSubModelChange'] = {
            ['hide'] = {
            },
            ['show'] = {
            },
        },
        ['OnRemoveBlendTime'] = 1,
        ['OnRemoveControlStrength'] = 1,
        ['OnRemoveParticles'] = {
        },
        ['OnRemoveSubModelChange'] = {
            ['hide'] = {
            },
            ['show'] = {
            },
        },
        ['OwnerUnit'] = '',
        ['Period'] = (function ()
            local func = function (ref_param)
                return -1
            end
            return func
        end)(),
        ['PeriodicEffect'] = '',
        ['PersistValidator'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 0
                return result
            end
            return func
        end)(),
        ['PlusCameraHeight'] = 0,
        ['RecoverDistSpeed'] = 200.0,
        ['RefreshEffect'] = '',
        ['RemoveRestrictions'] = {
        },
        ['Responses'] = {
        },
        ['SeqProperty'] = 1,
        ['SkelControlName'] = '',
        ['SpecialDistSpeed'] = 200.0,
        ['StackMax'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['bFocusUnit'] = false,
        ['bNoSkelUpdate'] = false,
        ['show'] = 'normal',
        ['sync'] = 'all',
        ['ID'] = 'root',
        ['Class'] = 'buff',
        ['NodeType'] = 'Buff',
        ['Template'] = 'Buff',
        ['Link'] = '$$.buff.炙烤.root',
        ['user_data'] = user_data['$$.buff.炙烤'],
        ['event'] = event_register
    },
}

return mt