-- ========================================================================
-- 【记录配置文件($$default_units_重生)】
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
        ['Effect'] = '$$default_units.spell.重生.Particle_1',
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
            ['Z'] = 0,
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
        ['Link'] = '$$default_units.spell.重生.ActorEffect_1',
        ['user_data'] = user_data['$$default_units.spell.重生'],
        ['event'] = event_register
    },
    ['AddBuff_1'] = {
        ['ActorArray'] = nil,
        ['BuffLink'] = '$$default_units.spell.重生.Buff_1',
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
        ['Link'] = '$$default_units.spell.重生.AddBuff_1',
        ['user_data'] = user_data['$$default_units.spell.重生'],
        ['event'] = event_register
    },
    ['AddBuff_2'] = {
        ['ActorArray'] = nil,
        ['BuffLink'] = '$$default_units.spell.重生.Buff_2',
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['Count'] = 1,
        ['Duration'] = -1,
        ['Name'] = '添加Buff节点_2',
        ['ResponseFlags'] = {
            ['Acquire'] = true,
            ['Flee'] = true,
        },
        ['SuppressValidatorFailOutput'] = false,
        ['TargetLocation'] = {
            ['Effect'] = '',
            ['LocalVar'] = 'A',
            ['Value'] = 'Caster',
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
        ['ID'] = 'AddBuff_2',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectAddBuff',
        ['Template'] = 'EffectAddBuff',
        ['Link'] = '$$default_units.spell.重生.AddBuff_2',
        ['user_data'] = user_data['$$default_units.spell.重生'],
        ['event'] = event_register
    },
    ['Buff_1'] = {
        ['ActorArray'] = nil,
        ['AddRestrictions'] = {
            [1] = '无敌',
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
        ['InstanceMax'] = 0,
        ['KeyValuePairs'] = {
        },
        ['KillBuffEffect'] = 1,
        ['ModelTransparent'] = 0,
        ['Name'] = 'Buff节点_1',
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
                return 1
            end
            return func
        end)(),
        ['PeriodicEffect'] = '$$default_units.spell.重生.Switch_1',
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
        ['Link'] = '$$default_units.spell.重生.Buff_1',
        ['user_data'] = user_data['$$default_units.spell.重生'],
        ['event'] = event_register
    },
    ['Buff_2'] = {
        ['ActorArray'] = {
            [1] = '$$default_units.spell.重生.ActorEffect_1',
        },
        ['AddRestrictions'] = {
            [1] = '无敌',
            [2] = '定身',
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
                return 2
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
        ['InstanceMax'] = 0,
        ['KeyValuePairs'] = {
        },
        ['KillBuffEffect'] = 1,
        ['ModelTransparent'] = 0,
        ['Name'] = 'Buff节点_2',
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
        ['ID'] = 'Buff_2',
        ['Class'] = 'buff',
        ['NodeType'] = 'Buff',
        ['Template'] = 'Buff',
        ['Link'] = '$$default_units.spell.重生.Buff_2',
        ['user_data'] = user_data['$$default_units.spell.重生'],
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
        ['SpawnEffect'] = '$$default_units.spell.重生.AddBuff_1',
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
            [1] = '$$default_units.spell.重生.Unit_1',
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
        ['Link'] = '$$default_units.spell.重生.CreateUnit_1',
        ['user_data'] = user_data['$$default_units.spell.重生'],
        ['event'] = event_register
    },
    ['Particle_1'] = {
        ['Asset'] = 'effect/samplespells/reincarnation/reincarnation/particle.effect',
        ['AutoScaleBaseRadius'] = 128,
        ['Name'] = '粒子节点_1',
        ['Scale'] = 1,
        ['ID'] = 'Particle_1',
        ['Class'] = 'particle',
        ['NodeType'] = 'Particle',
        ['Template'] = 'Particle',
        ['Link'] = '$$default_units.spell.重生.Particle_1',
        ['user_data'] = user_data['$$default_units.spell.重生'],
        ['event'] = event_register
    },
    ['RandomDelay_1'] = {
        ['ActorArray'] = nil,
        ['BaseAmount'] = (function ()
            local func = function (ref_param)
                return 4
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
        ['Effect'] = '$$default_units.spell.重生.Set_3',
        ['Name'] = '延迟节点(可随机)_1',
        ['RandomAmount'] = (function ()
            local func = function (ref_param)
                return 3
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
        ['Link'] = '$$default_units.spell.重生.RandomDelay_1',
        ['user_data'] = user_data['$$default_units.spell.重生'],
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
            [1] = '$$default_units.spell.重生.UnitRevive_1',
            [2] = '$$default_units.spell.重生.AddBuff_2',
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
        ['Link'] = '$$default_units.spell.重生.Set_3',
        ['user_data'] = user_data['$$default_units.spell.重生'],
        ['event'] = event_register
    },
    ['Switch_1'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['CaseArray'] = {
            [1] = {
                ['Effect'] = '$$default_units.spell.重生.RandomDelay_1',
                ['Validator'] = (function ()
                                        --- lua_plus ---
                    --- skip_undefined ---
                    local function func(效果节点)
                        local 新变量 = true
                        local result = 0
                        local customErrorText
                        新变量 = base.unit_is_alive(base.eff_param_caster(效果节点))
                        if 新变量 == false then
                            result = 0
                        else
                            result = 2
                        end
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
        ['Link'] = '$$default_units.spell.重生.Switch_1',
        ['user_data'] = user_data['$$default_units.spell.重生'],
        ['event'] = event_register
    },
    ['UnitRevive_1'] = {
        ['ActorArray'] = {
        },
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['Name'] = '复活单位节点_1',
        ['SuppressValidatorFailOutput'] = false,
        ['TargetLocation'] = {
            ['Effect'] = '',
            ['LocalVar'] = 'A',
            ['Value'] = 'Caster',
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
        ['ID'] = 'UnitRevive_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectUnitRevive',
        ['Template'] = 'EffectUnitRevive',
        ['Link'] = '$$default_units.spell.重生.UnitRevive_1',
        ['user_data'] = user_data['$$default_units.spell.重生'],
        ['event'] = event_register
    },
    ['Unit_1'] = {
        ['ActorArray'] = nil,
        ['AnimMapping'] = {
        },
        ['AttackableRadius'] = 0,
        ['Attribute'] = {
            ['半月斩等级'] = nil,
            ['暴风雪等级'] = nil,
            ['暴击'] = nil,
            ['暴击伤害'] = nil,
            ['暴怒秘籍'] = nil,
            ['爆燃秘籍'] = nil,
            ['辟地秘籍'] = nil,
            ['冰暴等级'] = nil,
            ['冰暴伤害秘籍'] = nil,
            ['冰风暴秘籍'] = nil,
            ['冰冷之心天赋等级'] = nil,
            ['冰霜召唤师秘籍'] = nil,
            ['不灭之躯天赋等级'] = nil,
            ['不屈意志天赋等级'] = nil,
            ['冲动天赋等级'] = nil,
            ['穿肠秘籍'] = nil,
            ['穿透'] = nil,
            ['出血秘籍'] = nil,
            ['脆化冻结'] = nil,
            ['单位标记'] = nil,
            ['等级'] = nil,
            ['癫火秘籍'] = nil,
            ['动脉打击天赋等级'] = nil,
            ['法术暴击'] = nil,
            ['法术暴击伤害'] = nil,
            ['法术穿透'] = nil,
            ['法术破甲'] = nil,
            ['焚天秘籍'] = nil,
            ['格挡'] = nil,
            ['攻击'] = 10,
            ['攻击范围'] = 175,
            ['攻击速度'] = 1,
            ['鼓舞光环等级'] = nil,
            ['寒冰箭等级'] = nil,
            ['寒冰增效天赋等级'] = nil,
            ['寒冰掌握秘籍'] = nil,
            ['护盾'] = nil,
            ['护甲'] = nil,
            ['火球术等级'] = nil,
            ['火球增效秘籍'] = nil,
            ['火焰亲和天赋等级'] = nil,
            ['火焰召唤师秘籍'] = nil,
            ['火焰之墙等级'] = nil,
            ['减耗'] = nil,
            ['剑刃乱舞等级'] = nil,
            ['减伤'] = nil,
            ['技能点'] = nil,
            ['经验'] = nil,
            ['经验上限'] = nil,
            ['急速'] = 1,
            ['亢奋秘籍'] = nil,
            ['快速冻结秘籍'] = nil,
            ['狂怒秘籍'] = nil,
            ['狂热秘籍'] = nil,
            ['冷却缩减'] = nil,
            ['裂地斩等级'] = nil,
            ['裂地震荡秘籍'] = nil,
            ['凛冬秘籍'] = nil,
            ['乱舞震荡秘籍'] = nil,
            ['命源秘籍'] = nil,
            ['魔法'] = nil,
            ['魔法恢复'] = nil,
            ['魔法上限'] = nil,
            ['魔抗'] = nil,
            ['怒气爆发等级'] = nil,
            ['破甲'] = nil,
            ['强化寒冰箭天赋等级'] = nil,
            ['强化火球术天赋等级'] = nil,
            ['强化灼烧天赋等级'] = nil,
            ['强击光环等级'] = nil,
            ['闪避'] = nil,
            ['闪烁能量秘籍'] = nil,
            ['生命'] = 200,
            ['生命恢复'] = nil,
            ['生命上限'] = 200,
            ['神力秘籍'] = nil,
            ['嗜血秘籍'] = nil,
            ['视野范围'] = nil,
            ['守护光环等级'] = nil,
            ['撕裂秘籍'] = nil,
            ['搜敌范围'] = 180,
            ['碎冰秘籍'] = nil,
            ['碎魂秘籍'] = nil,
            ['武力压制天赋等级'] = nil,
            ['吸血'] = nil,
            ['旋风斩等级'] = nil,
            ['雪崩秘籍'] = nil,
            ['炎帝等级'] = nil,
            ['移动速度'] = 300,
            ['月光斩天赋等级'] = nil,
            ['月刃秘籍'] = nil,
            ['召唤火焰卫士等级'] = nil,
            ['召唤水元素等级'] = nil,
            ['炙烤秘籍'] = nil,
            ['致命打击天赋等级'] = nil,
            ['致死秘籍'] = nil,
            ['转身速度'] = 1800,
            ['灼烧等级'] = nil,
            ['逐日剑法天赋等级'] = nil,
            ['逐日斩等级'] = nil,
            ['逐日震荡秘籍'] = nil,
            ['最大转身速度'] = -1,
            ['最小转身速度'] = -1,
        },
        ['CustomUnitData'] = {
        },
        ['DefaultAI'] = '',
        ['Description'] = '',
        ['Effect'] = '',
        ['Filter'] = {
            [1] = '单位',
            [2] = '小兵',
        },
        ['Icon'] = '',
        ['Inventorys'] = {
        },
        ['ModelData'] = '',
        ['ModelScaleFactor'] = 1,
        ['Name'] = '马甲单位',
        ['PackageInfo'] = '',
        ['PlanerShadow'] = true,
        ['Responses'] = {
        },
        ['Restrictions'] = {
        },
        ['ReviveTime'] = -1,
        ['ScanIgnoreVisibility'] = false,
        ['UnitData'] = {
            ['AttackSkill'] = nil,
            ['AttackableRadius'] = 60,
            ['AttackedHeight'] = 130,
            ['Attribute'] = {
                ['半月斩等级'] = nil,
                ['暴风雪等级'] = nil,
                ['暴击'] = nil,
                ['暴击伤害'] = nil,
                ['暴怒秘籍'] = nil,
                ['爆燃秘籍'] = nil,
                ['辟地秘籍'] = nil,
                ['冰暴等级'] = nil,
                ['冰暴伤害秘籍'] = nil,
                ['冰风暴秘籍'] = nil,
                ['冰冷之心天赋等级'] = nil,
                ['冰霜召唤师秘籍'] = nil,
                ['不灭之躯天赋等级'] = nil,
                ['不屈意志天赋等级'] = nil,
                ['冲动天赋等级'] = nil,
                ['穿肠秘籍'] = nil,
                ['穿透'] = nil,
                ['出血秘籍'] = nil,
                ['脆化冻结'] = nil,
                ['单位标记'] = nil,
                ['等级'] = nil,
                ['癫火秘籍'] = nil,
                ['动脉打击天赋等级'] = nil,
                ['法术暴击'] = nil,
                ['法术暴击伤害'] = nil,
                ['法术穿透'] = nil,
                ['法术破甲'] = nil,
                ['焚天秘籍'] = nil,
                ['格挡'] = nil,
                ['攻击'] = 10,
                ['攻击范围'] = 175,
                ['攻击速度'] = 1,
                ['鼓舞光环等级'] = nil,
                ['寒冰箭等级'] = nil,
                ['寒冰增效天赋等级'] = nil,
                ['寒冰掌握秘籍'] = nil,
                ['护盾'] = nil,
                ['护甲'] = nil,
                ['火球术等级'] = nil,
                ['火球增效秘籍'] = nil,
                ['火焰亲和天赋等级'] = nil,
                ['火焰召唤师秘籍'] = nil,
                ['火焰之墙等级'] = nil,
                ['减耗'] = nil,
                ['剑刃乱舞等级'] = nil,
                ['减伤'] = nil,
                ['技能点'] = nil,
                ['经验'] = nil,
                ['经验上限'] = nil,
                ['急速'] = 1,
                ['亢奋秘籍'] = nil,
                ['快速冻结秘籍'] = nil,
                ['狂怒秘籍'] = nil,
                ['狂热秘籍'] = nil,
                ['冷却缩减'] = nil,
                ['裂地斩等级'] = nil,
                ['裂地震荡秘籍'] = nil,
                ['凛冬秘籍'] = nil,
                ['乱舞震荡秘籍'] = nil,
                ['命源秘籍'] = nil,
                ['魔法'] = nil,
                ['魔法恢复'] = nil,
                ['魔法上限'] = nil,
                ['魔抗'] = nil,
                ['怒气爆发等级'] = nil,
                ['破甲'] = nil,
                ['强化寒冰箭天赋等级'] = nil,
                ['强化火球术天赋等级'] = nil,
                ['强化灼烧天赋等级'] = nil,
                ['强击光环等级'] = nil,
                ['闪避'] = nil,
                ['闪烁能量秘籍'] = nil,
                ['生命'] = 200,
                ['生命恢复'] = nil,
                ['生命上限'] = 200,
                ['神力秘籍'] = nil,
                ['嗜血秘籍'] = nil,
                ['视野范围'] = nil,
                ['守护光环等级'] = nil,
                ['撕裂秘籍'] = nil,
                ['搜敌范围'] = 180,
                ['碎冰秘籍'] = nil,
                ['碎魂秘籍'] = nil,
                ['武力压制天赋等级'] = nil,
                ['吸血'] = nil,
                ['旋风斩等级'] = nil,
                ['雪崩秘籍'] = nil,
                ['炎帝等级'] = nil,
                ['移动速度'] = 300,
                ['月光斩天赋等级'] = nil,
                ['月刃秘籍'] = nil,
                ['召唤火焰卫士等级'] = nil,
                ['召唤水元素等级'] = nil,
                ['炙烤秘籍'] = nil,
                ['致命打击天赋等级'] = nil,
                ['致死秘籍'] = nil,
                ['转身速度'] = nil,
                ['灼烧等级'] = nil,
                ['逐日剑法天赋等级'] = nil,
                ['逐日斩等级'] = nil,
                ['逐日震荡秘籍'] = nil,
                ['最大转身速度'] = -1,
                ['最小转身速度'] = -1,
            },
            ['Block'] = {
                ['Center'] = {
                    ['X'] = 0.5,
                    ['Y'] = 0.5,
                },
                ['Footpoint'] = '',
                ['Size'] = nil,
            },
            ['BloodBarType'] = 'BLOODBAR_TYPE_HERO',
            ['BloodHeightScale'] = 1,
            ['BloodWidthScale'] = 1,
            ['BornEffect'] = '',
            ['ClientSelectFoot'] = 0,
            ['ClientSelectHead'] = 150,
            ['ClientSelectRadius'] = 70,
            ['ClientSelectable'] = true,
            ['CollisionRadius'] = 0,
            ['CollisionType'] = 2,
            ['DeadSink'] = 1,
            ['DeadSinkHeight'] = 300,
            ['DeathDelayTime'] = 0,
            ['DeathEffect'] = '',
            ['DeathEffectByEnemy'] = '',
            ['DeathEffectSpeed'] = 1,
            ['DeathShowTime'] = 0,
            ['DynamicPointLightShaderingEnable'] = true,
            ['Effect'] = '',
            ['EffectByEnemy'] = '',
            ['HeroSkill'] = nil,
            ['HideSkill'] = nil,
            ['KillOnDeactivate'] = 0,
            ['LevelUpEffect'] = '',
            ['MaxTurnSpeed'] = -1,
            ['MinTurnSpeed'] = -1,
            ['MiniMapIcon'] = '',
            ['MiniMapIconEnemy'] = '',
            ['MiniMapIconWithFacing'] = false,
            ['MiniMapIconZindex'] = 1,
            ['ModelAttribute'] = {
                ['X轴缩放'] = nil,
                ['Y轴缩放'] = nil,
                ['Z轴缩放'] = nil,
                ['动画速度'] = nil,
                ['朝向'] = nil,
                ['缩放'] = nil,
            },
            ['ModelScaleFactor'] = 1,
            ['ModelType'] = 1,
            ['Module'] = {
                [1] = '运动',
                [2] = '移动',
            },
            ['MoveAnimSpeedFactor'] = 0.714285,
            ['NeedOutScreenTick'] = 0,
            ['PackageInfo'] = 'characters/Monster/SK_Spider_Burrow_S/model.prefab',
            ['ResourcePackageList'] = '',
            ['ResourceType'] = '魔法',
            ['Restriction'] = {
            },
            ['SelectedRadius'] = 60,
            ['ShowBlood'] = 1,
            ['Sync'] = 'sight',
            ['TurnSpeed'] = 1800,
            ['UnitClass'] = '生物',
            ['UnitTag'] = '小兵',
            ['UpperBodyBone'] = '',
            ['Useable'] = 1,
            ['death_material'] = '',
        },
        ['UseRoleSH'] = false,
        ['distance_random'] = {
            [1] = 125,
            [2] = 175,
        },
        ['follow_random'] = 5,
        ['stay_time'] = 3,
        ['ID'] = 'Unit_1',
        ['Class'] = 'unit',
        ['NodeType'] = 'Unit',
        ['Template'] = 'Unit',
        ['Link'] = '$$default_units.spell.重生.Unit_1',
        ['user_data'] = user_data['$$default_units.spell.重生'],
        ['event'] = event_register
    },
    ['root'] = {
        ['ActorArray'] = nil,
        ['ClientSpell'] = {
            ['AfterCastParticles'] = {
            },
            ['AfterCastSoundId'] = nil,
            ['AfterCastSoundNeedBreak'] = 2,
            ['AssistName'] = nil,
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
            ['ShowCastingTime'] = 0,
            ['StopCastAssistName'] = nil,
            ['TurnWithTarget'] = 0,
        },
        ['CreationEffect'] = '$$default_units.spell.重生.CreateUnit_1',
        ['CustomClientSpell'] = {
        },
        ['CustomSpellData'] = {
        },
        ['DefaultAnimationList'] = {
        },
        ['EditorCategory'] = {
            [1] = 'Special',
        },
        ['Effect'] = '',
        ['LevelUpEffect'] = '',
        ['Name'] = '重生',
        ['Responses'] = {
        },
        ['SimpleText'] = '冷却时间：<node-value node="Buff_2" field = "Game.Duration"/>',
        ['SimpleVideo'] = nil,
        ['SimpleVideoPreview'] = nil,
        ['SpellAnim'] = {
            ['Animation'] = '',
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
            ['Description'] = '死后原地复活。重生有240秒冷却时间。',
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
            ['cool'] = 0,
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
            ['init_level'] = 1,
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
            ['cast_finish_time'] = 0,
            ['cast_shot_time'] = 0,
            ['cast_start_time'] = 0,
        },
        ['attack_speed_affect_cooldown'] = 0,
        ['attack_speed_attribute'] = '',
        ['cast_type'] = 1,
        ['cool'] = 240,
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
        ['Link'] = '$$default_units.spell.重生.root',
        ['user_data'] = user_data['$$default_units.spell.重生'],
        ['event'] = event_register
    },
}

return mt