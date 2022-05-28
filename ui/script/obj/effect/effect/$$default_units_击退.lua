-- ========================================================================
-- 【记录配置文件($$default_units_击退)】
-- 说明：公共所属的全部记录，除下面列出的记录外，公共记录树中还可以包含其它公共记录的根记录记录(common.xxx.xxx)。公共记录树所属记录只可以继承来自记录模板的记录记录（template.xxx）。特殊标记：1、#NIL代表强制赋值为nil，无视继承值。
-- ========================================================================

local user_data = require 'obj.effect.user_data'
local event_register = base.event_register
local mt = {
    ['Buff_1'] = {
        ['ActorArray'] = nil,
        ['AddRestrictions'] = {
            [1] = '失控',
            [2] = '定身',
            [3] = '缴械',
            [4] = '禁魔',
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
            ['AllowMultiInstance'] = true,
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
                return -1
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
        ['ExpireEffect'] = '',
        ['FinalEffect'] = '',
        ['GhostDuraTime'] = 0.5,
        ['GhostEndTime'] = 0.3,
        ['GhostIntervalTime'] = 0.3,
        ['GhostStartTime'] = 0.4,
        ['HideBlood'] = 0,
        ['InitialEffect'] = '$$default_units.effect.击退.PolarOffset_1',
        ['InstanceMax'] = 0,
        ['KeyValuePairs'] = {
        },
        ['KillBuffEffect'] = 1,
        ['ModelTransparent'] = 0,
        ['Name'] = '击退',
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
        ['ID'] = 'Buff_1',
        ['Class'] = 'buff',
        ['NodeType'] = 'Buff',
        ['Template'] = 'Buff',
        ['Link'] = '$$default_units.effect.击退.Buff_1',
        ['user_data'] = user_data['$$default_units.effect.击退'],
        ['event'] = event_register
    },
    ['LaunchMissileDash_1'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['DoImpactUnit'] = true,
        ['FinalEffect'] = '$$default_units.effect.击退.RemoveBuff_1',
        ['FinishActors'] = {
        },
        ['FinishEffect'] = '',
        ['ImpactActors'] = {
        },
        ['ImpactEffect'] = '',
        ['ImpactFinalTargetRadius'] = 0,
        ['ImpactMaxCount'] = (function ()
            local func = function (ref_param)
                return -1
            end
            return func
        end)(),
        ['ImpactSearchFilter'] = '敌方,单位;无敌,死亡',
        ['ImpactSearchRange'] = (function ()
            local func = function (ref_param)
                return 35
            end
            return func
        end)(),
        ['LaunchLocation'] = {
            ['Effect'] = '$$default_units.effect.击退.root',
            ['LocalVar'] = 'A',
            ['Value'] = 'Target',
        },
        ['LaunchOffset'] = {
            ['Angle'] = {
                ['LocalOffset'] = 0,
                ['Location'] = {
                    ['Effect'] = '',
                    ['LocalVar'] = 'A',
                    ['Value'] = 'Caster',
                },
                ['Method'] = nil,
                ['OtherLocation'] = {
                    ['Effect'] = '',
                    ['LocalVar'] = 'A',
                    ['Value'] = 'Default',
                },
            },
            ['Distance'] = 0,
        },
        ['LaunchTargetType'] = 'Point',
        ['Method'] = 'Exist',
        ['MissileType'] = '',
        ['Name'] = '冲锋效果节点',
        ['ParabolaApex'] = (function ()
            local func = function (ref_param)
                return 0
            end
            return func
        end)(),
        ['ParabolaLandingHeight'] = 0,
        ['Prevent'] = {
            [1] = 'Unflyable',
        },
        ['ResponseFlags'] = {
            ['Acquire'] = true,
            ['Flee'] = true,
        },
        ['Speed'] = (function ()
            local func = function (ref_param)
                return 800
            end
            return func
        end)(),
        ['StaticBlock'] = true,
        ['SuppressValidatorFailOutput'] = false,
        ['TargetLocation'] = {
            ['Effect'] = '',
            ['LocalVar'] = 'A',
            ['Value'] = 'Default',
        },
        ['TargetType'] = 'Any',
        ['TurnToDirection'] = false,
        ['TurnToVelocity'] = false,
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
        ['WhichUnit'] = {
            ['Effect'] = '$$default_units.effect.击退.root',
            ['LocalVar'] = nil,
            ['Value'] = 'Target',
        },
        ['temp_height'] = 0,
        ['temp_impact_model'] = '',
        ['ID'] = 'LaunchMissileDash_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectLaunchMissile',
        ['Template'] = 'EffectLaunchMissile',
        ['Link'] = '$$default_units.effect.击退.LaunchMissileDash_1',
        ['user_data'] = user_data['$$default_units.effect.击退'],
        ['event'] = event_register
    },
    ['PolarOffset_1'] = {
        ['ActorArray'] = nil,
        ['Angle'] = {
            ['LocalOffset'] = 0,
            ['Location'] = {
                ['Effect'] = '',
                ['LocalVar'] = 'A',
                ['Value'] = 'Source',
            },
            ['Method'] = 'AngleBetweenPoints',
            ['OtherLocation'] = {
                ['Effect'] = '',
                ['LocalVar'] = 'A',
                ['Value'] = 'Default',
            },
        },
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['Distance'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)

                if (result == nil or result == 0) then
                    result = 100
                else

                end
                return result
            end
            return func
        end)(),
        ['Name'] = '坐标偏移节点_1',
        ['OffsetByUnitRadius'] = true,
        ['PeriodChangeIndex'] = (function ()
                        --- lua_plus ---
            local function func(效果节点)
                local parent = base.eff_param_get_parent(效果节点)
                local cache = base.eff_param_get_cache(parent)
                local count = cache.PeriodicCount(效果节点)
                local result = (count + 1) / 2
                return result
            end
            return func
        end)(),
        ['PeriodicAngleChange'] = (function ()
            local func = function (ref_param)
                return 0
            end
            return func
        end)(),
        ['PeriodicDistanceChange'] = (function ()
            local func = function (ref_param)
                return 0
            end
            return func
        end)(),
        ['PointLocalVar'] = '',
        ['SuppressValidatorFailOutput'] = false,
        ['TargetEffect'] = '$$default_units.effect.击退.LaunchMissileDash_1',
        ['TargetLocation'] = {
            ['Effect'] = '',
            ['LocalVar'] = 'A',
            ['Value'] = 'Default',
        },
        ['TargetType'] = 'Any',
        ['Validators'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 0
                return result
            end
            return func
        end)(),
        ['ID'] = 'PolarOffset_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectPolarOffset',
        ['Template'] = 'EffectPolarOffset',
        ['Link'] = '$$default_units.effect.击退.PolarOffset_1',
        ['user_data'] = user_data['$$default_units.effect.击退'],
        ['event'] = event_register
    },
    ['RemoveBuff_1'] = {
        ['ActorArray'] = nil,
        ['BuffCategories'] = '可被驱散;',
        ['BuffLink'] = '$$default_units.effect.击退.Buff_1',
        ['BuffValidator'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 0
                return result
            end
            return func
        end)(),
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['Count'] = -1,
        ['Name'] = '移除Buff节点',
        ['ResponseFlags'] = {
            ['Acquire'] = false,
            ['Flee'] = false,
        },
        ['Sorts'] = nil,
        ['SuppressValidatorFailOutput'] = false,
        ['TargetLocation'] = {
            ['Effect'] = '$$default_units.effect.击退.root',
            ['LocalVar'] = 'A',
            ['Value'] = 'Target',
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
        ['ID'] = 'RemoveBuff_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectRemoveBuff',
        ['Template'] = 'EffectRemoveBuff',
        ['Link'] = '$$default_units.effect.击退.RemoveBuff_1',
        ['user_data'] = user_data['$$default_units.effect.击退'],
        ['event'] = event_register
    },
    ['root'] = {
        ['ActorArray'] = nil,
        ['BuffLink'] = '$$default_units.effect.击退.Buff_1',
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['Count'] = 1,
        ['Duration'] = -1,
        ['Name'] = '击退',
        ['ResponseFlags'] = {
            ['Acquire'] = true,
            ['Flee'] = true,
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
        ['ID'] = 'root',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectAddBuff',
        ['Template'] = 'EffectAddBuff',
        ['Link'] = '$$default_units.effect.击退.root',
        ['user_data'] = user_data['$$default_units.effect.击退'],
        ['event'] = event_register
    },
}

return mt