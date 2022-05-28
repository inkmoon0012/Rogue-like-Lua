-- ========================================================================
-- 【记录配置文件($$_逐日斩)】
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
        ['Effect'] = '$$.spell.逐日斩.Particle_1',
        ['EventCreation'] = 'on_cast_channel',
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
        ['PlaySpeed'] = 0.5,
        ['Rotation'] = {
            ['X'] = 0,
            ['Y'] = 0,
            ['Z'] = 0,
        },
        ['Scale'] = 2.7,
        ['ShowShadow'] = true,
        ['SocketName'] = 'socket_hand_r',
        ['sync'] = true,
        ['ID'] = 'ActorEffect_1',
        ['Class'] = 'actor',
        ['NodeType'] = 'ActorEffect',
        ['Template'] = 'ActorEffect',
        ['Link'] = '$$.spell.逐日斩.ActorEffect_1',
        ['user_data'] = user_data['$$.spell.逐日斩'],
        ['event'] = event_register
    },
    ['ActorEffect_2'] = {
        ['AutoScale'] = false,
        ['CreationFilter'] = {
            ['Ally'] = true,
            ['Enemy'] = true,
            ['Self'] = true,
        },
        ['Effect'] = '$$.spell.逐日斩.Particle_2',
        ['EventCreation'] = 'on_cast_shot',
        ['EventCreationModel'] = '',
        ['EventDestruction'] = '',
        ['EventDestructionModel'] = 'Death',
        ['FollowRotation'] = 1,
        ['KillOnDeactivate'] = 0,
        ['KillOnFinish'] = 1,
        ['Name'] = '粒子表现节点_2',
        ['Offset'] = {
            ['X'] = 235,
            ['Y'] = 0,
            ['Z'] = 0,
        },
        ['PlaySpeed'] = 0.6,
        ['Rotation'] = {
            ['X'] = 0,
            ['Y'] = 0,
            ['Z'] = 0,
        },
        ['Scale'] = 1.2,
        ['ShowShadow'] = true,
        ['SocketName'] = '',
        ['sync'] = true,
        ['ID'] = 'ActorEffect_2',
        ['Class'] = 'actor',
        ['NodeType'] = 'ActorEffect',
        ['Template'] = 'ActorEffect',
        ['Link'] = '$$.spell.逐日斩.ActorEffect_2',
        ['user_data'] = user_data['$$.spell.逐日斩'],
        ['event'] = event_register
    },
    ['ActorEffect_3'] = {
        ['AutoScale'] = false,
        ['CreationFilter'] = {
            ['Ally'] = true,
            ['Enemy'] = true,
            ['Self'] = true,
        },
        ['Effect'] = '$$.spell.逐日斩.Particle_4',
        ['EventCreation'] = 'on_cast_start',
        ['EventCreationModel'] = '',
        ['EventDestruction'] = 'on_cast_stop',
        ['EventDestructionModel'] = 'Death',
        ['FollowRotation'] = 1,
        ['KillOnDeactivate'] = 0,
        ['KillOnFinish'] = 1,
        ['Name'] = '粒子表现节点_3',
        ['Offset'] = {
            ['X'] = 0,
            ['Y'] = 0,
            ['Z'] = 0,
        },
        ['PlaySpeed'] = 0.5,
        ['Rotation'] = {
            ['X'] = 0,
            ['Y'] = 0,
            ['Z'] = 0,
        },
        ['Scale'] = 1,
        ['ShowShadow'] = true,
        ['SocketName'] = '',
        ['sync'] = true,
        ['ID'] = 'ActorEffect_3',
        ['Class'] = 'actor',
        ['NodeType'] = 'ActorEffect',
        ['Template'] = 'ActorEffect',
        ['Link'] = '$$.spell.逐日斩.ActorEffect_3',
        ['user_data'] = user_data['$$.spell.逐日斩'],
        ['event'] = event_register
    },
    ['ActorEffect_4'] = {
        ['AutoScale'] = false,
        ['CreationFilter'] = {
            ['Ally'] = true,
            ['Enemy'] = true,
            ['Self'] = true,
        },
        ['Effect'] = '$$.spell.逐日斩.Particle_4',
        ['EventCreation'] = 'on_cast_start',
        ['EventCreationModel'] = '',
        ['EventDestruction'] = 'on_cast_stop',
        ['EventDestructionModel'] = 'Death',
        ['FollowRotation'] = 1,
        ['KillOnDeactivate'] = 0,
        ['KillOnFinish'] = 1,
        ['Name'] = '粒子表现节点_4',
        ['Offset'] = {
            ['X'] = 0,
            ['Y'] = 0,
            ['Z'] = 0,
        },
        ['PlaySpeed'] = 0.5,
        ['Rotation'] = {
            ['X'] = 0,
            ['Y'] = 0,
            ['Z'] = 0,
        },
        ['Scale'] = 2,
        ['ShowShadow'] = true,
        ['SocketName'] = '',
        ['sync'] = true,
        ['ID'] = 'ActorEffect_4',
        ['Class'] = 'actor',
        ['NodeType'] = 'ActorEffect',
        ['Template'] = 'ActorEffect',
        ['Link'] = '$$.spell.逐日斩.ActorEffect_4',
        ['user_data'] = user_data['$$.spell.逐日斩'],
        ['event'] = event_register
    },
    ['ActorEffect_5'] = {
        ['AutoScale'] = false,
        ['CreationFilter'] = {
            ['Ally'] = true,
            ['Enemy'] = true,
            ['Self'] = true,
        },
        ['Effect'] = '$$.spell.逐日斩.Particle_3',
        ['EventCreation'] = 'on_cast_start',
        ['EventCreationModel'] = '',
        ['EventDestruction'] = 'on_cast_stop',
        ['EventDestructionModel'] = 'Death',
        ['FollowRotation'] = 1,
        ['KillOnDeactivate'] = 0,
        ['KillOnFinish'] = 1,
        ['Name'] = '粒子表现节点_5',
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
        ['ID'] = 'ActorEffect_5',
        ['Class'] = 'actor',
        ['NodeType'] = 'ActorEffect',
        ['Template'] = 'ActorEffect',
        ['Link'] = '$$.spell.逐日斩.ActorEffect_5',
        ['user_data'] = user_data['$$.spell.逐日斩'],
        ['event'] = event_register
    },
    ['Damage_1'] = {
        ['ActorArray'] = nil,
        ['Amount'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local Attack = base.unit_get_attribute(base.eff_param_caster(效果节点), "攻击")
                local CriticalRate = base.unit_get_attribute(base.eff_param_caster(效果节点), "暴击")
                local CriticalDamage = base.unit_get_attribute(base.eff_param_caster(效果节点), "暴击伤害")
                local level = base.unit_get_attribute(base.eff_param_caster(效果节点), "逐日斩等级")
                local level2 = base.unit_get_attribute(base.eff_param_caster(效果节点), "碎魂秘籍")
                local Resistance = base.unit_get_attribute(base.eff_param_target_unit(效果节点), "减伤")
                local Result = 1
                local Random100 = math.random(1, 100)
                if CriticalRate >= Random100 then
                    Result = (Attack * (1 + level * 0.15) + 30 * level) * (1 - Resistance) * (CriticalDamage + 0.5 + 0.5 * level2)
                else
                    Result = (Attack * (1 + level * 0.15) + 30 * level) * (1 - Resistance)
                end
                return Result
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
        ['DamageType'] = '物理',
        ['Name'] = '伤害效果节点_1',
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
        ['ID'] = 'Damage_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectDamage',
        ['Template'] = 'EffectDamage',
        ['Link'] = '$$.spell.逐日斩.Damage_1',
        ['user_data'] = user_data['$$.spell.逐日斩'],
        ['event'] = event_register
    },
    ['Damage_2'] = {
        ['ActorArray'] = {
            [1] = '$$.spell.逐日斩.ActorEffect_5',
        },
        ['Amount'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 0
                local level = base.unit_get_attribute(base.eff_param_caster(效果节点), "逐日震荡秘籍")
                local level2 = base.unit_get_attribute(base.eff_param_caster(效果节点), "裂地震荡秘籍")
                result = 10 + 10 * level + 10 * level2
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
        ['DamageType'] = '物理',
        ['Name'] = '伤害效果节点_2',
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
        ['ID'] = 'Damage_2',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectDamage',
        ['Template'] = 'EffectDamage',
        ['Link'] = '$$.spell.逐日斩.Damage_2',
        ['user_data'] = user_data['$$.spell.逐日斩'],
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
        ['FinalEffect'] = '',
        ['FinishActors'] = {
            [1] = '',
        },
        ['FinishEffect'] = '',
        ['ImpactActors'] = {
        },
        ['ImpactEffect'] = '',
        ['ImpactFinalTargetRadius'] = 0,
        ['ImpactMaxCount'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['ImpactSearchFilter'] = '敌方,单位;无敌,死亡',
        ['ImpactSearchRange'] = (function ()
            local func = function (ref_param)
                return 200
            end
            return func
        end)(),
        ['LaunchLocation'] = {
            ['Effect'] = '',
            ['LocalVar'] = 'A',
            ['Value'] = 'Source',
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
        ['Name'] = '冲锋效果节点_1',
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
                return 700
            end
            return func
        end)(),
        ['StaticBlock'] = true,
        ['SuppressValidatorFailOutput'] = false,
        ['TargetLocation'] = {
            ['Effect'] = '',
            ['LocalVar'] = 'A',
            ['Value'] = 'MainTarget',
        },
        ['TargetType'] = 'Any',
        ['TurnToDirection'] = true,
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
            ['Effect'] = '',
            ['LocalVar'] = nil,
            ['Value'] = 'Caster',
        },
        ['temp_height'] = 0,
        ['temp_impact_model'] = '',
        ['ID'] = 'LaunchMissileDash_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectLaunchMissile',
        ['Template'] = 'EffectLaunchMissile',
        ['Link'] = '$$.spell.逐日斩.LaunchMissileDash_1',
        ['user_data'] = user_data['$$.spell.逐日斩'],
        ['event'] = event_register
    },
    ['LaunchMissile_1'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['DoImpactUnit'] = true,
        ['FinalEffect'] = '$$.spell.逐日斩.Set_2',
        ['FinishActors'] = {
            [1] = '$$.spell.逐日斩.ActorEffect_3',
        },
        ['FinishEffect'] = '',
        ['ImpactActors'] = {
        },
        ['ImpactEffect'] = '$$.spell.逐日斩.Damage_2',
        ['ImpactFinalTargetRadius'] = 0,
        ['ImpactMaxCount'] = (function ()
            local func = function (ref_param)
                return 3
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
            ['Effect'] = '$$.spell.逐日斩.PolarOffset_1',
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
        ['Method'] = 'New',
        ['MissileType'] = '$$.spell.逐日斩.UnitMissile_1',
        ['Name'] = '发射投射物节点(碰撞中途单位)_1',
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
                return 1250
            end
            return func
        end)(),
        ['StaticBlock'] = false,
        ['SuppressValidatorFailOutput'] = false,
        ['TargetLocation'] = {
            ['Effect'] = '',
            ['LocalVar'] = 'A',
            ['Value'] = 'Default',
        },
        ['TargetType'] = 'Any',
        ['TurnToDirection'] = true,
        ['TurnToVelocity'] = true,
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
            ['Effect'] = '',
            ['LocalVar'] = 'A',
            ['Value'] = 'Default',
        },
        ['temp_height'] = 110,
        ['temp_impact_model'] = '',
        ['ID'] = 'LaunchMissile_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectLaunchMissile',
        ['Template'] = 'EffectLaunchMissile',
        ['Link'] = '$$.spell.逐日斩.LaunchMissile_1',
        ['user_data'] = user_data['$$.spell.逐日斩'],
        ['event'] = event_register
    },
    ['Model_1'] = {
        ['ActorArray'] = nil,
        ['AnimMapping'] = {
        },
        ['Asset'] = 'effect/samplespells/shockwave/shockwave_missile/particle.effect',
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
        ['Link'] = '$$.spell.逐日斩.Model_1',
        ['user_data'] = user_data['$$.spell.逐日斩'],
        ['event'] = event_register
    },
    ['Particle_1'] = {
        ['Asset'] = 'effect/td_eff/bingying/dao3/particle.effect',
        ['AutoScaleBaseRadius'] = 128,
        ['Name'] = '粒子节点_1',
        ['Scale'] = 1,
        ['ID'] = 'Particle_1',
        ['Class'] = 'particle',
        ['NodeType'] = 'Particle',
        ['Template'] = 'Particle',
        ['Link'] = '$$.spell.逐日斩.Particle_1',
        ['user_data'] = user_data['$$.spell.逐日斩'],
        ['event'] = event_register
    },
    ['Particle_2'] = {
        ['Asset'] = 'effect/eff_battle/particle/shuangshouchui/zhongji/ps_zhongji_1/particle.effect',
        ['AutoScaleBaseRadius'] = 128,
        ['Name'] = '粒子节点_2',
        ['Scale'] = 1,
        ['ID'] = 'Particle_2',
        ['Class'] = 'particle',
        ['NodeType'] = 'Particle',
        ['Template'] = 'Particle',
        ['Link'] = '$$.spell.逐日斩.Particle_2',
        ['user_data'] = user_data['$$.spell.逐日斩'],
        ['event'] = event_register
    },
    ['Particle_3'] = {
        ['Asset'] = 'effect/eff_reverse/particle/unknown/jinguangzhen/ps_jinguangzhen_hit/particle.effect',
        ['AutoScaleBaseRadius'] = 128,
        ['Name'] = '粒子节点_3',
        ['Scale'] = 1,
        ['ID'] = 'Particle_3',
        ['Class'] = 'particle',
        ['NodeType'] = 'Particle',
        ['Template'] = 'Particle',
        ['Link'] = '$$.spell.逐日斩.Particle_3',
        ['user_data'] = user_data['$$.spell.逐日斩'],
        ['event'] = event_register
    },
    ['Particle_4'] = {
        ['Asset'] = 'effect/eff_reverse/particle/unknown/jinguangzhen/ps_jinguangzhen_hit/particle.effect',
        ['AutoScaleBaseRadius'] = 128,
        ['Name'] = '粒子节点_4',
        ['Scale'] = 1,
        ['ID'] = 'Particle_4',
        ['Class'] = 'particle',
        ['NodeType'] = 'Particle',
        ['Template'] = 'Particle',
        ['Link'] = '$$.spell.逐日斩.Particle_4',
        ['user_data'] = user_data['$$.spell.逐日斩'],
        ['event'] = event_register
    },
    ['PersistLoop_1'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['ExpireEffect'] = '',
        ['FinalEffect'] = '',
        ['InitialEffect'] = '',
        ['Name'] = '周期性节点_1',
        ['Period'] = (function ()
            local func = function (ref_param)
                return 0
            end
            return func
        end)(),
        ['PeriodicCount'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 0
                local level = base.unit_get_attribute(base.eff_param_caster(效果节点), "逐日震荡秘籍")
                result = level
                return result
            end
            return func
        end)(),
        ['PeriodicEffect'] = '$$.spell.逐日斩.PolarOffset_1',
        ['PersistFlags'] = {
            ['Channeled'] = false,
            ['Channeling'] = false,
            ['FinishStage'] = false,
            ['IgnoreStartDelay'] = false,
            ['RefreshModifierPerLoop'] = false,
            ['UseHaste'] = true,
        },
        ['PersistValidator'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 0
                return result
            end
            return func
        end)(),
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
        ['temp_PeriodicAngle'] = 0,
        ['temp_PeriodicDistance'] = (function ()
            local func = function (ref_param)
                return 0
            end
            return func
        end)(),
        ['temp_PeriodicVectorStart'] = {
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
        ['ID'] = 'PersistLoop_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectPersistLoop',
        ['Template'] = 'EffectPersistLoop',
        ['Link'] = '$$.spell.逐日斩.PersistLoop_1',
        ['user_data'] = user_data['$$.spell.逐日斩'],
        ['event'] = event_register
    },
    ['PolarOffset_1'] = {
        ['ActorArray'] = nil,
        ['Angle'] = {
            ['LocalOffset'] = 0,
            ['Location'] = {
                ['Effect'] = '',
                ['LocalVar'] = 'A',
                ['Value'] = 'Caster',
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
            local func = function (ref_param)
                return 600
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
                return 15
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
        ['TargetEffect'] = '$$.spell.逐日斩.LaunchMissile_1',
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
        ['Link'] = '$$.spell.逐日斩.PolarOffset_1',
        ['user_data'] = user_data['$$.spell.逐日斩'],
        ['event'] = event_register
    },
    ['RandomDelay_1'] = {
        ['ActorArray'] = nil,
        ['BaseAmount'] = (function ()
            local func = function (ref_param)
                return 0.1
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
        ['Effect'] = '$$.spell.逐日斩.PersistLoop_1',
        ['Name'] = '延迟节点(可随机)_1',
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
        ['Link'] = '$$.spell.逐日斩.RandomDelay_1',
        ['user_data'] = user_data['$$.spell.逐日斩'],
        ['event'] = event_register
    },
    ['Search_1'] = {
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
                ['Value'] = 'MainTarget',
            },
        },
        ['Arc'] = 15,
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['Height'] = 300,
        ['MaxCount'] = -1,
        ['Method'] = 'Arc',
        ['MinCount'] = 0,
        ['MinCountError'] = {
            ['ErrorSound'] = '',
            ['ErrorText'] = '',
            ['Result'] = 4,
        },
        ['Name'] = '搜索单位节点_1',
        ['Radius'] = (function ()
            local func = function (ref_param)
                return 300
            end
            return func
        end)(),
        ['ResponseFlags'] = {
            ['Acquire'] = false,
            ['Flee'] = false,
        },
        ['SearchEffect'] = '$$.spell.逐日斩.Set_1',
        ['SearchFilter'] = '敌方,单位;自身,无敌,死亡',
        ['SearchFlags'] = {
            ['ExtendByUnitRadius'] = false,
            ['OffsetByUnitRadiusAndAngle'] = false,
            ['ValidateChildrens'] = false,
        },
        ['SearchOffset'] = {
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
        ['SearchValidators'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 0
                return result
            end
            return func
        end)(),
        ['SuppressValidatorFailOutput'] = false,
        ['TargetLocation'] = {
            ['Effect'] = '',
            ['LocalVar'] = 'A',
            ['Value'] = 'Caster',
        },
        ['TargetSorts'] = nil,
        ['TargetType'] = 'Any',
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
        ['Width'] = 120,
        ['ID'] = 'Search_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectSearch',
        ['Template'] = 'EffectSearch',
        ['Link'] = '$$.spell.逐日斩.Search_1',
        ['user_data'] = user_data['$$.spell.逐日斩'],
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
            [1] = '$$.spell.逐日斩.Damage_1',
            [2] = '$$.spell.逐日斩.Set_RandomOne_1',
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
        ['Link'] = '$$.spell.逐日斩.Set_1',
        ['user_data'] = user_data['$$.spell.逐日斩'],
        ['event'] = event_register
    },
    ['Set_1_1'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['EffectArray'] = {
            [1] = '$$.spell.逐日斩.Search_1',
            [2] = '$$.spell.逐日斩.Switch_1',
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
        ['ID'] = 'Set_1_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectSet',
        ['Template'] = 'EffectSet',
        ['Link'] = '$$.spell.逐日斩.Set_1_1',
        ['user_data'] = user_data['$$.spell.逐日斩'],
        ['event'] = event_register
    },
    ['Set_2'] = {
        ['ActorArray'] = {
            [1] = '$$.spell.逐日斩.ActorEffect_4',
        },
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['EffectArray'] = nil,
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
            ['Effect'] = '$$.spell.逐日斩.LaunchMissile_1',
            ['LocalVar'] = 'A',
            ['Value'] = 'MainTarget',
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
        ['Link'] = '$$.spell.逐日斩.Set_2',
        ['user_data'] = user_data['$$.spell.逐日斩'],
        ['event'] = event_register
    },
    ['Set_RandomOne_1'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['EffectArray'] = {
            [1] = '$$default_units.effect.击退.root',
            [2] = '',
            [3] = '',
        },
        ['MaxCount'] = 1,
        ['MinCount'] = 1,
        ['Name'] = '随机选一效果_1',
        ['SetFlags'] = {
            ['Recycle'] = false,
            ['SetSource'] = false,
            ['Unordered'] = true,
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
        ['ID'] = 'Set_RandomOne_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectSet',
        ['Template'] = 'EffectSet',
        ['Link'] = '$$.spell.逐日斩.Set_RandomOne_1',
        ['user_data'] = user_data['$$.spell.逐日斩'],
        ['event'] = event_register
    },
    ['Switch_1'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['CaseArray'] = {
            [1] = {
                ['Effect'] = '$$.spell.逐日斩.RandomDelay_1',
                ['Validator'] = (function ()
                                        --- lua_plus ---
                    --- skip_undefined ---
                    local function func(效果节点)
                        local result = 1
                        local customErrorText
                        local level = base.unit_get_attribute(base.eff_param_caster(效果节点), "逐日震荡秘籍")
                        if level >= 1 then
                            result = 0
                        else
                            result = 1
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
        ['Link'] = '$$.spell.逐日斩.Switch_1',
        ['user_data'] = user_data['$$.spell.逐日斩'],
        ['event'] = event_register
    },
    ['UnitMissile_1'] = {
        ['ActorArray'] = nil,
        ['AnimMapping'] = {
        },
        ['AttackableRadius'] = 60,
        ['Attribute'] = {},
        ['CustomUnitData'] = {
        },
        ['DefaultAI'] = '',
        ['Description'] = '',
        ['Effect'] = 'effect/samplespells/shockwave/shockwave_missile/particle.effect',
        ['Filter'] = {
            [1] = '弹道',
        },
        ['Icon'] = '',
        ['Inventorys'] = {
        },
        ['ModelData'] = '$$.spell.逐日斩.Model_1',
        ['ModelScaleFactor'] = 0.7,
        ['Name'] = '[3]投射物单位模版_1',
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
            ['Attribute'] = {},
            ['Block'] = {
                ['Center'] = {
                    ['X'] = 0.5,
                    ['Y'] = 0.5,
                },
                ['Footpoint'] = '',
                ['Size'] = nil,
            },
            ['BloodBarType'] = 'BLOODBAR_TYPE_NORMAL',
            ['BloodHeightScale'] = 1,
            ['BloodWidthScale'] = 1,
            ['BornEffect'] = '',
            ['ClientSelectFoot'] = 0,
            ['ClientSelectHead'] = 150,
            ['ClientSelectRadius'] = 70,
            ['ClientSelectable'] = true,
            ['CollisionRadius'] = 48,
            ['CollisionType'] = 2,
            ['DeadSink'] = 1,
            ['DeadSinkHeight'] = 300,
            ['DeathDelayTime'] = 0,
            ['DeathEffect'] = '',
            ['DeathEffectByEnemy'] = '',
            ['DeathEffectSpeed'] = 1,
            ['DeathShowTime'] = 0,
            ['DynamicPointLightShaderingEnable'] = true,
            ['Effect'] = 'effect/eff_Ceshi_1/particle/PS_Huo_5/particle.effect',
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
            },
            ['MoveAnimSpeedFactor'] = 0.714285,
            ['NeedOutScreenTick'] = 0,
            ['PackageInfo'] = '',
            ['ResourcePackageList'] = '',
            ['ResourceType'] = '魔法',
            ['Restriction'] = {
            },
            ['SelectedRadius'] = 60,
            ['ShowBlood'] = 1,
            ['Sync'] = 'self|sight',
            ['TurnSpeed'] = 600,
            ['UnitClass'] = '弹道',
            ['UnitTag'] = '弹道',
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
        ['ID'] = 'UnitMissile_1',
        ['Class'] = 'unit',
        ['NodeType'] = 'Unit',
        ['Template'] = 'Unit',
        ['Link'] = '$$.spell.逐日斩.UnitMissile_1',
        ['user_data'] = user_data['$$.spell.逐日斩'],
        ['event'] = event_register
    },
    ['root'] = {
        ['ActorArray'] = {
            [1] = '$$.spell.逐日斩.ActorEffect_1',
            [2] = '$$.spell.逐日斩.ActorEffect_2',
        },
        ['ClientSpell'] = {
            ['AfterCastParticles'] = {
            },
            ['AfterCastSoundId'] = nil,
            ['AfterCastSoundNeedBreak'] = 2,
            ['AssistName'] = '直线指示器',
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
        ['CreationEffect'] = '',
        ['CustomClientSpell'] = {
        },
        ['CustomSpellData'] = {
        },
        ['DefaultAnimationList'] = {
            [1] = 'human/sword_anim/twohand_04/skill_01.ani',
        },
        ['EditorCategory'] = nil,
        ['Effect'] = '$$.spell.逐日斩.Set_1_1',
        ['LevelUpEffect'] = '',
        ['Name'] = '逐日斩',
        ['Responses'] = {
        },
        ['SimpleText'] = '',
        ['SimpleVideo'] = nil,
        ['SimpleVideoPreview'] = nil,
        ['SpellAnim'] = {
            ['Animation'] = 'human/sword_anim/twohand_04/skill_01.ani',
            ['AnimationHasChannel'] = nil,
            ['AnimationHasShot'] = nil,
            ['CustomStageTime'] = {
                ['cast_channel_time'] = 0,
                ['cast_finish_time'] = 0.4,
                ['cast_shot_time'] = 0.3,
                ['cast_start_time'] = 0.4,
            },
            ['HasChannel'] = false,
            ['HasShot'] = false,
            ['IsAlias'] = nil,
            ['IsCustomTime'] = true,
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
            ['Description'] = '',
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
            ['ignore_skill_immune'] = 1,
            ['ignore_uncontrol'] = 0,
            ['init_level'] = 1,
            ['initial_distance'] = 0,
            ['initial_range'] = 0,
            ['initial_width'] = 0,
            ['instant'] = 0,
            ['key'] = 'Q',
            ['max_level'] = 1,
            ['max_value'] = 1,
            ['need_cast_in_range'] = 1,
            ['range'] = 0,
            ['rectangle_width'] = 100,
            ['show_stack'] = 0,
            ['target_type'] = 0,
        },
        ['StartEffect'] = '$$.spell.逐日斩.LaunchMissileDash_1',
        ['TargetUnitFilter'] = '敌方,可见,单位;无敌,魔免,死亡',
        ['TargetUnitRange'] = 800,
        ['TargetUnitSorts'] = nil,
        ['Time'] = {
            ['cast_channel_time'] = 0,
            ['cast_finish_time'] = 0.4,
            ['cast_shot_time'] = 0.3,
            ['cast_start_time'] = 0.4,
        },
        ['attack_speed_affect_cooldown'] = 0,
        ['attack_speed_attribute'] = '',
        ['cast_type'] = 0,
        ['cool'] = 0.1,
        ['cost'] = -10,
        ['distance'] = 150,
        ['range'] = 150,
        ['skill_type'] = 0,
        ['target_type'] = 4,
        ['turn_imm_before_cast'] = false,
        ['ID'] = 'root',
        ['Class'] = 'spell',
        ['NodeType'] = 'SpellRoot',
        ['Template'] = 'SpellRoot',
        ['Link'] = '$$.spell.逐日斩.root',
        ['user_data'] = user_data['$$.spell.逐日斩'],
        ['event'] = event_register
    },
}

return mt