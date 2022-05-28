-- ========================================================================
-- 【记录配置文件($$default_units_召唤水元素)】
-- 说明：技能所属的全部记录，除下面列出的记录外，技能记录树中还可以包含公共记录的根记录记录(common.xxx.xxx)。技能记录树所属记录只可以继承来自记录模板的记录记录（template.xxx）。特殊标记：1、#NIL代表强制赋值为nil，无视继承值。
-- ========================================================================

local user_data = require 'obj.effect.user_data'
local event_register = base.event_register
local mt = {
    ['ActorEffect_1'] = {
        ['AutoScale'] = false,
        ['CreationFilter'] = {
            ['Ally'] = true,
            ['Enemy'] = true,
            ['Self'] = true,
        },
        ['Effect'] = '$$default_units.spell.召唤水元素.Particle_1',
        ['EventCreation'] = 'on_cast_start',
        ['EventCreationModel'] = '',
        ['EventDestruction'] = 'on_cast_stop',
        ['EventDestructionModel'] = 'Death',
        ['FollowRotation'] = 1,
        ['KillOnDeactivate'] = 0,
        ['KillOnFinish'] = 1,
        ['Name'] = '粒子表现节点_1',
        ['Offset'] = {
            ['X'] = 0,
            ['Y'] = 0,
            ['Z'] = 20,
        },
        ['PlaySpeed'] = 1,
        ['Rotation'] = {
            ['X'] = 0,
            ['Y'] = 0,
            ['Z'] = 0,
        },
        ['Scale'] = 1,
        ['ShowShadow'] = true,
        ['SocketName'] = '',
        ['sync'] = true,
        ['ID'] = 'ActorEffect_1',
        ['Class'] = 'actor',
        ['NodeType'] = 'ActorEffect',
        ['Template'] = 'ActorEffect',
        ['Link'] = '$$default_units.spell.召唤水元素.ActorEffect_1',
        ['user_data'] = user_data['$$default_units.spell.召唤水元素'],
        ['event'] = event_register
    },
    ['ActorEffect_2'] = {
        ['AutoScale'] = false,
        ['CreationFilter'] = {
            ['Ally'] = true,
            ['Enemy'] = true,
            ['Self'] = true,
        },
        ['Effect'] = '$$default_units.spell.召唤水元素.Particle_2',
        ['EventCreation'] = 'on_cast_start',
        ['EventCreationModel'] = '',
        ['EventDestruction'] = 'on_cast_stop',
        ['EventDestructionModel'] = 'Death',
        ['FollowRotation'] = 1,
        ['KillOnDeactivate'] = 0,
        ['KillOnFinish'] = 1,
        ['Name'] = '粒子表现节点_2',
        ['Offset'] = {
            ['X'] = 0,
            ['Y'] = 0,
            ['Z'] = 20,
        },
        ['PlaySpeed'] = 1,
        ['Rotation'] = {
            ['X'] = 0,
            ['Y'] = 0,
            ['Z'] = 0,
        },
        ['Scale'] = 1,
        ['ShowShadow'] = true,
        ['SocketName'] = '',
        ['sync'] = true,
        ['ID'] = 'ActorEffect_2',
        ['Class'] = 'actor',
        ['NodeType'] = 'ActorEffect',
        ['Template'] = 'ActorEffect',
        ['Link'] = '$$default_units.spell.召唤水元素.ActorEffect_2',
        ['user_data'] = user_data['$$default_units.spell.召唤水元素'],
        ['event'] = event_register
    },
    ['AddBuff_1'] = {
        ['ActorArray'] = nil,
        ['BuffLink'] = '$$default_units.spell.召唤水元素.Buff_1',
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['Count'] = 1,
        ['Duration'] = -1,
        ['Name'] = '添加Buff节点_1',
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
        ['ID'] = 'AddBuff_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectAddBuff',
        ['Template'] = 'EffectAddBuff',
        ['Link'] = '$$default_units.spell.召唤水元素.AddBuff_1',
        ['user_data'] = user_data['$$default_units.spell.召唤水元素'],
        ['event'] = event_register
    },
    ['BuffTargetsAddTarget_1'] = {
        ['ActorArray'] = nil,
        ['BuffLink'] = '$$default_units.spell.召唤水元素.Buff_1',
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['Name'] = 'Buff单位组 - 添加单位节点_1',
        ['ResponseFlags'] = {
            ['Acquire'] = false,
            ['Flee'] = false,
        },
        ['SnapRange'] = -1,
        ['SuppressValidatorFailOutput'] = false,
        ['TargetLocation'] = {
            ['Effect'] = '$$default_units.spell.召唤水元素.Set_2',
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
        ['WhichUnit'] = {
            ['Effect'] = '$$default_units.spell.召唤水元素.Set_2',
            ['LocalVar'] = 'A',
            ['Value'] = 'Target',
        },
        ['ID'] = 'BuffTargetsAddTarget_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectBuffTargetsAddTarget',
        ['Template'] = 'EffectBuffTargetsAddTarget',
        ['Link'] = '$$default_units.spell.召唤水元素.BuffTargetsAddTarget_1',
        ['user_data'] = user_data['$$default_units.spell.召唤水元素'],
        ['event'] = event_register
    },
    ['BuffTargetsClear_1'] = {
        ['ActorArray'] = nil,
        ['BuffLink'] = '$$default_units.spell.召唤水元素.Buff_1',
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['Name'] = 'Buff单位组 - 清空节点_1',
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
        ['ID'] = 'BuffTargetsClear_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectBuffTargetsClear',
        ['Template'] = 'EffectBuffTargetsClear',
        ['Link'] = '$$default_units.spell.召唤水元素.BuffTargetsClear_1',
        ['user_data'] = user_data['$$default_units.spell.召唤水元素'],
        ['event'] = event_register
    },
    ['BuffTargetsEnum_1'] = {
        ['ActorArray'] = {
        },
        ['BuffLink'] = '$$default_units.spell.召唤水元素.Buff_1',
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['Effect'] = '$$default_units.spell.召唤水元素.Set_6',
        ['Name'] = 'Buff单位组 - 遍历节点_1',
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
        ['ID'] = 'BuffTargetsEnum_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectBuffTargetsEnum',
        ['Template'] = 'EffectBuffTargetsEnum',
        ['Link'] = '$$default_units.spell.召唤水元素.BuffTargetsEnum_1',
        ['user_data'] = user_data['$$default_units.spell.召唤水元素'],
        ['event'] = event_register
    },
    ['Buff_1'] = {
        ['ActorArray'] = nil,
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
            ['DisableWhenDead'] = false,
            ['Permanent'] = true,
            ['SingleInstancePerCaster'] = true,
            ['UseHaste'] = false,
        },
        ['BuffIcon'] = '',
        ['BuffName'] = '单位数量',
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
        ['InitialEffect'] = '',
        ['InstanceMax'] = 1,
        ['KeyValuePairs'] = {
        },
        ['KillBuffEffect'] = 1,
        ['ModelTransparent'] = 0,
        ['Name'] = '单位数量',
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
                return 3
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
        ['Link'] = '$$default_units.spell.召唤水元素.Buff_1',
        ['user_data'] = user_data['$$default_units.spell.召唤水元素'],
        ['event'] = event_register
    },
    ['CreateUnit_1'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['CreateUnitFlags'] = {
            ['Illusion'] = false,
        },
        ['Facing'] = {
            ['LocalOffset'] = 0,
            ['Location'] = {
                ['Effect'] = '',
                ['LocalVar'] = 'A',
                ['Value'] = 'Default',
            },
            ['Method'] = 'Facing',
            ['OtherLocation'] = {
                ['Effect'] = '',
                ['LocalVar'] = 'A',
                ['Value'] = 'Default',
            },
        },
        ['Name'] = '创建单位节点_1',
        ['ResponseFlags'] = {
            ['Acquire'] = false,
            ['Flee'] = false,
        },
        ['SpawnCount'] = 1,
        ['SpawnEffect'] = '$$default_units.spell.召唤水元素.Set_2',
        ['SpawnOffset'] = {
            ['Angle'] = {
                ['LocalOffset'] = 0,
                ['Location'] = {
                    ['Effect'] = '',
                    ['LocalVar'] = 'A',
                    ['Value'] = 'Default',
                },
                ['Method'] = 'Facing',
                ['OtherLocation'] = {
                    ['Effect'] = '',
                    ['LocalVar'] = 'A',
                    ['Value'] = 'Default',
                },
            },
            ['Distance'] = 1,
        },
        ['SpawnOwner'] = {
            ['TargetLocation'] = {
                ['Effect'] = '',
                ['LocalVar'] = 'A',
                ['Value'] = 'Caster',
            },
            ['Value'] = 'TargetLocation',
        },
        ['SpawnTypeUnit'] = {
            ['Effect'] = '',
            ['LocalVar'] = 'A',
            ['Value'] = 'Default',
        },
        ['SpawnUnitTypePerLevel'] = {
            [1] = '$$default_units.unit.水元素.root',
        },
        ['SuppressValidatorFailOutput'] = false,
        ['TargetLocation'] = {
            ['Effect'] = '',
            ['LocalVar'] = 'A',
            ['Value'] = 'Default',
        },
        ['TargetType'] = 'Point',
        ['UnitLocalVar'] = '',
        ['UnitPicker'] = 'UnitLink',
        ['Validators'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 0
                return result
            end
            return func
        end)(),
        ['ID'] = 'CreateUnit_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectCreateUnit',
        ['Template'] = 'EffectCreateUnit',
        ['Link'] = '$$default_units.spell.召唤水元素.CreateUnit_1',
        ['user_data'] = user_data['$$default_units.spell.召唤水元素'],
        ['event'] = event_register
    },
    ['Particle_1'] = {
        ['Asset'] = 'effect/samplespells/water/waterelement_water_birth/particle.effect',
        ['AutoScaleBaseRadius'] = 128,
        ['Name'] = '粒子节点_1',
        ['Scale'] = 1,
        ['ID'] = 'Particle_1',
        ['Class'] = 'particle',
        ['NodeType'] = 'Particle',
        ['Template'] = 'Particle',
        ['Link'] = '$$default_units.spell.召唤水元素.Particle_1',
        ['user_data'] = user_data['$$default_units.spell.召唤水元素'],
        ['event'] = event_register
    },
    ['Particle_2'] = {
        ['Asset'] = 'effect/samplespells/water/water/particle.effect',
        ['AutoScaleBaseRadius'] = 128,
        ['Name'] = '粒子节点_2',
        ['Scale'] = 1,
        ['ID'] = 'Particle_2',
        ['Class'] = 'particle',
        ['NodeType'] = 'Particle',
        ['Template'] = 'Particle',
        ['Link'] = '$$default_units.spell.召唤水元素.Particle_2',
        ['user_data'] = user_data['$$default_units.spell.召唤水元素'],
        ['event'] = event_register
    },
    ['PolarOffset_1'] = {
        ['ActorArray'] = {
        },
        ['Angle'] = {
            ['LocalOffset'] = 0,
            ['Location'] = {
                ['Effect'] = '',
                ['LocalVar'] = 'A',
                ['Value'] = 'Caster',
            },
            ['Method'] = 'Facing',
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
            local func = function (ref_param)
                return 200
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
        ['TargetEffect'] = '$$default_units.spell.召唤水元素.RandomDelay_1',
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
        ['Link'] = '$$default_units.spell.召唤水元素.PolarOffset_1',
        ['user_data'] = user_data['$$default_units.spell.召唤水元素'],
        ['event'] = event_register
    },
    ['PolarOffset_2'] = {
        ['ActorArray'] = {
        },
        ['Angle'] = {
            ['LocalOffset'] = 0,
            ['Location'] = {
                ['Effect'] = '$$default_units.spell.召唤水元素.BuffTargetsEnum_1',
                ['LocalVar'] = 'A',
                ['Value'] = 'Target',
            },
            ['Method'] = 'Facing',
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
            local func = function (ref_param)
                return 0
            end
            return func
        end)(),
        ['Name'] = '坐标偏移节点_2',
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
        ['TargetEffect'] = '$$default_units.spell.召唤水元素.RandomDelay_2',
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
        ['ID'] = 'PolarOffset_2',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectPolarOffset',
        ['Template'] = 'EffectPolarOffset',
        ['Link'] = '$$default_units.spell.召唤水元素.PolarOffset_2',
        ['user_data'] = user_data['$$default_units.spell.召唤水元素'],
        ['event'] = event_register
    },
    ['RandomDelay_1'] = {
        ['ActorArray'] = {
            [1] = '$$default_units.spell.召唤水元素.ActorEffect_1',
        },
        ['BaseAmount'] = (function ()
            local func = function (ref_param)
                return 0.5
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
        ['Effect'] = '$$default_units.spell.召唤水元素.CreateUnit_1',
        ['Name'] = '随机延迟节点_1',
        ['RandomAmount'] = (function ()
            local func = function (ref_param)
                return 0
            end
            return func
        end)(),
        ['SuppressValidatorFailOutput'] = false,
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
        ['ID'] = 'RandomDelay_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectRandomDelay',
        ['Template'] = 'EffectRandomDelay',
        ['Link'] = '$$default_units.spell.召唤水元素.RandomDelay_1',
        ['user_data'] = user_data['$$default_units.spell.召唤水元素'],
        ['event'] = event_register
    },
    ['RandomDelay_2'] = {
        ['ActorArray'] = {
            [1] = '$$default_units.spell.召唤水元素.ActorEffect_2',
        },
        ['BaseAmount'] = (function ()
            local func = function (ref_param)
                return 0.01
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
        ['Effect'] = '',
        ['Name'] = '随机延迟节点_2',
        ['RandomAmount'] = (function ()
            local func = function (ref_param)
                return 0
            end
            return func
        end)(),
        ['SuppressValidatorFailOutput'] = false,
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
        ['ID'] = 'RandomDelay_2',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectRandomDelay',
        ['Template'] = 'EffectRandomDelay',
        ['Link'] = '$$default_units.spell.召唤水元素.RandomDelay_2',
        ['user_data'] = user_data['$$default_units.spell.召唤水元素'],
        ['event'] = event_register
    },
    ['RemoveBuff_1'] = {
        ['ActorArray'] = nil,
        ['BuffCategories'] = '可被驱散;',
        ['BuffLink'] = '',
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
        ['Count'] = 2,
        ['Name'] = '移除Buff节点_1',
        ['ResponseFlags'] = {
            ['Acquire'] = false,
            ['Flee'] = false,
        },
        ['Sorts'] = nil,
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
        ['ID'] = 'RemoveBuff_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectRemoveBuff',
        ['Template'] = 'EffectRemoveBuff',
        ['Link'] = '$$default_units.spell.召唤水元素.RemoveBuff_1',
        ['user_data'] = user_data['$$default_units.spell.召唤水元素'],
        ['event'] = event_register
    },
    ['Set_1'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['EffectArray'] = {
            [1] = '$$default_units.spell.召唤水元素.AddBuff_1',
            [2] = '$$default_units.spell.召唤水元素.Switch_1',
            [3] = '$$default_units.spell.召唤水元素.PolarOffset_1',
        },
        ['MaxCount'] = -1,
        ['MinCount'] = -1,
        ['Name'] = '效果集合_1',
        ['SetFlags'] = {
            ['Recycle'] = false,
            ['SetSource'] = false,
            ['Unordered'] = false,
            ['ValidateChildrens'] = false,
            ['WithReplacement'] = false,
        },
        ['SuppressValidatorFailOutput'] = false,
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
        ['Weights'] = nil,
        ['ID'] = 'Set_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectSet',
        ['Template'] = 'EffectSet',
        ['Link'] = '$$default_units.spell.召唤水元素.Set_1',
        ['user_data'] = user_data['$$default_units.spell.召唤水元素'],
        ['event'] = event_register
    },
    ['Set_2'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['EffectArray'] = {
            [1] = '$$default_units.spell.召唤水元素.BuffTargetsAddTarget_1',
        },
        ['MaxCount'] = -1,
        ['MinCount'] = -1,
        ['Name'] = '效果集合_2',
        ['SetFlags'] = {
            ['Recycle'] = false,
            ['SetSource'] = false,
            ['Unordered'] = false,
            ['ValidateChildrens'] = false,
            ['WithReplacement'] = false,
        },
        ['SuppressValidatorFailOutput'] = false,
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
        ['Weights'] = nil,
        ['ID'] = 'Set_2',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectSet',
        ['Template'] = 'EffectSet',
        ['Link'] = '$$default_units.spell.召唤水元素.Set_2',
        ['user_data'] = user_data['$$default_units.spell.召唤水元素'],
        ['event'] = event_register
    },
    ['Set_3'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['EffectArray'] = {
            [1] = '$$default_units.spell.召唤水元素.PolarOffset_2',
            [2] = '$$default_units.spell.召唤水元素.UnitRemove_1',
        },
        ['MaxCount'] = -1,
        ['MinCount'] = -1,
        ['Name'] = '效果集合_3',
        ['SetFlags'] = {
            ['Recycle'] = false,
            ['SetSource'] = false,
            ['Unordered'] = false,
            ['ValidateChildrens'] = false,
            ['WithReplacement'] = false,
        },
        ['SuppressValidatorFailOutput'] = false,
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
        ['Weights'] = nil,
        ['ID'] = 'Set_3',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectSet',
        ['Template'] = 'EffectSet',
        ['Link'] = '$$default_units.spell.召唤水元素.Set_3',
        ['user_data'] = user_data['$$default_units.spell.召唤水元素'],
        ['event'] = event_register
    },
    ['Set_4'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['EffectArray'] = {
            [1] = '$$default_units.spell.召唤水元素.BuffTargetsEnum_1',
            [2] = '$$default_units.spell.召唤水元素.BuffTargetsClear_1',
        },
        ['MaxCount'] = -1,
        ['MinCount'] = -1,
        ['Name'] = '效果集合_4',
        ['SetFlags'] = {
            ['Recycle'] = false,
            ['SetSource'] = false,
            ['Unordered'] = false,
            ['ValidateChildrens'] = false,
            ['WithReplacement'] = false,
        },
        ['SuppressValidatorFailOutput'] = false,
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
        ['Weights'] = nil,
        ['ID'] = 'Set_4',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectSet',
        ['Template'] = 'EffectSet',
        ['Link'] = '$$default_units.spell.召唤水元素.Set_4',
        ['user_data'] = user_data['$$default_units.spell.召唤水元素'],
        ['event'] = event_register
    },
    ['Set_6'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['EffectArray'] = {
            [1] = '$$default_units.spell.召唤水元素.PolarOffset_2',
            [2] = '$$default_units.spell.召唤水元素.UnitRemove_1',
        },
        ['MaxCount'] = -1,
        ['MinCount'] = -1,
        ['Name'] = '效果集合_6',
        ['SetFlags'] = {
            ['Recycle'] = false,
            ['SetSource'] = false,
            ['Unordered'] = false,
            ['ValidateChildrens'] = false,
            ['WithReplacement'] = false,
        },
        ['SuppressValidatorFailOutput'] = false,
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
        ['Weights'] = nil,
        ['ID'] = 'Set_6',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectSet',
        ['Template'] = 'EffectSet',
        ['Link'] = '$$default_units.spell.召唤水元素.Set_6',
        ['user_data'] = user_data['$$default_units.spell.召唤水元素'],
        ['event'] = event_register
    },
    ['Switch_1'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['CaseArray'] = {
            [1] = {
                ['Effect'] = '$$default_units.spell.召唤水元素.Set_4',
                ['Validator'] = (function ()
                                        --- lua_plus ---
                    --- skip_undefined ---
                    local function func(效果节点)
                        local result = 0
                        local customErrorText
                        local amount = base.buff_get_stack(base.unit_find_buff(base.eff_param_caster(效果节点), "$$default_units.spell.召唤水元素.Buff_1"))
                        log.debug(amount)
                        return result, customErrorText
                    end
                    return func
                end)(),
            },
        },
        ['CaseDefault'] = '',
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['Name'] = 'Switch_1',
        ['SuppressValidatorFailOutput'] = false,
        ['SwitchFlags'] = {
            ['ValidateChildrens'] = false,
        },
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
        ['ID'] = 'Switch_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectSwitch',
        ['Template'] = 'EffectSwitch',
        ['Link'] = '$$default_units.spell.召唤水元素.Switch_1',
        ['user_data'] = user_data['$$default_units.spell.召唤水元素'],
        ['event'] = event_register
    },
    ['Switch_1_1'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['CaseArray'] = {
            [1] = {
                ['Effect'] = '',
                ['Validator'] = (function ()
                                        --- lua_plus ---
                    --- skip_undefined ---
                    local function func(效果节点)
                        local result = 1
                        local customErrorText
                        local Level = base.unit_get_attribute(base.eff_param_caster(效果节点), "召唤水元素等级")
                        local MinionNumber = base.buff_get_stack(base.unit_find_buff(base.eff_param_caster(效果节点), "$$default_units.spell.召唤水元素.Buff_1"))
                        if MinionNumber > 2 then
                            result = 0
                            log.debug(MinionNumber)
                            return result, customErrorText
                        end
                    end
                    return func
                end)(),
            },
        },
        ['CaseDefault'] = '',
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['Name'] = 'Switch_1',
        ['SuppressValidatorFailOutput'] = false,
        ['SwitchFlags'] = {
            ['ValidateChildrens'] = false,
        },
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
        ['ID'] = 'Switch_1_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectSwitch',
        ['Template'] = 'EffectSwitch',
        ['Link'] = '$$default_units.spell.召唤水元素.Switch_1_1',
        ['user_data'] = user_data['$$default_units.spell.召唤水元素'],
        ['event'] = event_register
    },
    ['UnitRemove_1'] = {
        ['ActorArray'] = {
        },
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['Name'] = '移除单位节点_1',
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
        ['ID'] = 'UnitRemove_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectUnitRemove',
        ['Template'] = 'EffectUnitRemove',
        ['Link'] = '$$default_units.spell.召唤水元素.UnitRemove_1',
        ['user_data'] = user_data['$$default_units.spell.召唤水元素'],
        ['event'] = event_register
    },
    ['root'] = {
        ['ActorArray'] = nil,
        ['ClientSpell'] = {
            ['AfterCastParticles'] = {
            },
            ['AfterCastSoundId'] = nil,
            ['AfterCastSoundNeedBreak'] = 2,
            ['AssistName'] = '无目标指示器',
            ['BeforeCastParticles'] = {
            },
            ['BeforeCastSoundId'] = nil,
            ['BeforeCastSoundNeedBreak'] = 2,
            ['CastingParticles'] = {
            },
            ['CastingSoundId'] = nil,
            ['CastingSoundNeedBreak'] = 2,
            ['CritHitEffect'] = {
            },
            ['DefaultAnimationList'] = {
            },
            ['ExtremeSpell'] = 0,
            ['HitEffect'] = {
            },
            ['HitSoundId'] = nil,
            ['IconName'] = 'unkown',
            ['OriginSkill'] = 1,
            ['PhysicalCriticalSound'] = nil,
            ['ShotParticles'] = {
            },
            ['ShotSoundId'] = nil,
            ['ShotSoundNeedBreak'] = 2,
            ['ShowCastingTime'] = 1,
            ['StopCastAssistName'] = nil,
            ['TurnWithTarget'] = 1,
        },
        ['CreationEffect'] = '',
        ['CustomClientSpell'] = {
        },
        ['CustomSpellData'] = {
        },
        ['DefaultAnimationList'] = {
            [1] = 'human/barehanded_anim/hand_05/skill_012.ani',
        },
        ['EditorCategory'] = {
            [1] = 'Special',
        },
        ['Effect'] = '$$default_units.spell.召唤水元素.Set_1',
        ['LevelUpEffect'] = '',
        ['Name'] = '召唤水元素',
        ['Responses'] = {
        },
        ['SimpleText'] = '技能冷却：<node-value node="root" field = "Game.cool"/>\r\n初始位置偏移：<node-value node="PolarOffset_1" field = "Game.Distance"/>\n初始角度偏移：<node-value node="PolarOffset_1" field = "Game.Angle.LocalOffset"/>\n召唤数量：<node-value node="CreateUnit_1" field = "Game.SpawnCount"/>',
        ['SimpleVideo'] = nil,
        ['SimpleVideoPreview'] = nil,
        ['SpellAnim'] = {
            ['Animation'] = 'human/barehanded_anim/hand_05/skill_012.ani',
            ['AnimationHasChannel'] = nil,
            ['AnimationHasShot'] = nil,
            ['CustomStageTime'] = nil,
            ['HasChannel'] = nil,
            ['HasShot'] = nil,
            ['IsAlias'] = nil,
            ['IsCustomTime'] = nil,
            ['PreviewModel'] = nil,
        },
        ['SpellAttribute'] = {},
        ['SpellData'] = {
            ['Categories'] = {
                [1] = '可被禁用',
                [2] = '可被打断',
                [3] = '可被沉默',
                [4] = '主动技能',
            },
            ['CostDes'] = '',
            ['Description'] = '召唤一个可远程攻击的水元素为你作战。',
            ['ShortDes'] = '',
            ['UpgradeDes'] = '',
            ['ability_tags'] = {
                [1] = '位移类型',
                [2] = '被动位移',
            },
            ['active'] = 0,
            ['affect_type'] = 1,
            ['affect_unit_type'] = {
                [1] = '英雄',
                [2] = '野怪',
                [3] = '召唤物',
                [4] = '小兵',
            },
            ['affect_walk_facing'] = 1,
            ['break_cast_channel'] = 0,
            ['break_cast_finish'] = 1,
            ['break_cast_shot'] = 0,
            ['break_cast_start'] = 0,
            ['break_order'] = 0,
            ['break_walk'] = 1,
            ['cast_channel_time'] = 0,
            ['cast_finish_time'] = 0,
            ['cast_shot_time'] = 0,
            ['cast_start_time'] = 0,
            ['cast_type'] = 0,
            ['charge_cool'] = 0,
            ['charge_max_stack'] = 0,
            ['cool'] = 1,
            ['cooldown_mode'] = 0,
            ['cost'] = 0,
            ['cost_per'] = 0,
            ['distance'] = 0,
            ['fan_degree'] = 0,
            ['forbid_turning'] = 0,
            ['grow_time'] = 0,
            ['ignore_cooldown_reduce'] = 0,
            ['ignore_cost_reduce'] = 0,
            ['ignore_skill_immune'] = 0,
            ['ignore_uncontrol'] = 0,
            ['init_level'] = 5,
            ['initial_distance'] = 0,
            ['initial_range'] = 0,
            ['initial_width'] = 0,
            ['instant'] = 0,
            ['key'] = '',
            ['max_level'] = 1,
            ['max_value'] = 1,
            ['need_cast_in_range'] = 1,
            ['range'] = 0,
            ['rectangle_width'] = 0,
            ['show_stack'] = 0,
            ['target_type'] = 0,
        },
        ['StartEffect'] = '',
        ['TargetUnitFilter'] = '敌方,可见,单位;无敌,魔免,死亡',
        ['TargetUnitRange'] = 800,
        ['TargetUnitSorts'] = nil,
        ['Time'] = {
            ['cast_channel_time'] = 0,
            ['cast_finish_time'] = 0.31597271561623,
            ['cast_shot_time'] = 0.13959068059921,
            ['cast_start_time'] = 0.31110325455666,
        },
        ['attack_speed_affect_cooldown'] = 0,
        ['attack_speed_attribute'] = '',
        ['cast_type'] = 0,
        ['cool'] = 1,
        ['cost'] = 0,
        ['distance'] = 0,
        ['range'] = 0,
        ['skill_type'] = 0,
        ['target_type'] = 0,
        ['turn_imm_before_cast'] = false,
        ['ID'] = 'root',
        ['Class'] = 'spell',
        ['NodeType'] = 'SpellRoot',
        ['Template'] = 'SpellRoot',
        ['Link'] = '$$default_units.spell.召唤水元素.root',
        ['user_data'] = user_data['$$default_units.spell.召唤水元素'],
        ['event'] = event_register
    },
}

return mt