-- ========================================================================
-- 【记录配置文件($$_火焰之墙)】
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
        ['Effect'] = '$$.spell.火焰之墙.Particle_1',
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
        ['Link'] = '$$.spell.火焰之墙.ActorEffect_1',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
        ['event'] = event_register
    },
    ['AddBuff_1'] = {
        ['ActorArray'] = nil,
        ['BuffLink'] = '$$.buff.灼烧2.root',
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 0.3
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
        ['Link'] = '$$.spell.火焰之墙.AddBuff_1',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
        ['event'] = event_register
    },
    ['AddBuff_2'] = {
        ['ActorArray'] = nil,
        ['BuffLink'] = '$$.buff.炙烤.root',
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
        ['ID'] = 'AddBuff_2',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectAddBuff',
        ['Template'] = 'EffectAddBuff',
        ['Link'] = '$$.spell.火焰之墙.AddBuff_2',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
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
        ['SpawnEffect'] = '$$.spell.火焰之墙.Set_2',
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
            [1] = '$$.spell.火焰之墙.UnitMissile_1',
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
        ['Link'] = '$$.spell.火焰之墙.CreateUnit_1',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
        ['event'] = event_register
    },
    ['Damage_1'] = {
        ['ActorArray'] = nil,
        ['Amount'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local MagicAttack = base.unit_get_attribute(base.eff_param_caster(效果节点), "法术破甲")
                local CriticalRate = base.unit_get_attribute(base.eff_param_caster(效果节点), "暴击")
                local CriticalDamage = base.unit_get_attribute(base.eff_param_caster(效果节点), "暴击伤害")
                local level = base.unit_get_attribute(base.eff_param_caster(效果节点), "火焰之墙等级")
                local Resistance = base.unit_get_attribute(base.eff_param_target_unit(效果节点), "减伤")
                local talent1 = base.unit_get_attribute(base.eff_param_caster(效果节点), "火焰亲和天赋等级")
                local Result = 1
                local Random100 = math.random(1, 100)
                if CriticalRate >= Random100 then
                    Result = (MagicAttack + talent1 * 5 + 15 * level) * (1 - Resistance) * CriticalDamage
                else
                    Result = (MagicAttack + talent1 * 5 + 15 * level) * (1 - Resistance)
                end
                log.debug(MagicAttack)
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
        ['DamageType'] = '魔法',
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
        ['Link'] = '$$.spell.火焰之墙.Damage_1',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
        ['event'] = event_register
    },
    ['Particle_1'] = {
        ['Asset'] = 'effect/eff_reverse/particle/unknown/tongyong/ps_zhuoshao_eff/particle.effect',
        ['AutoScaleBaseRadius'] = 128,
        ['Name'] = '粒子节点_1',
        ['Scale'] = 1,
        ['ID'] = 'Particle_1',
        ['Class'] = 'particle',
        ['NodeType'] = 'Particle',
        ['Template'] = 'Particle',
        ['Link'] = '$$.spell.火焰之墙.Particle_1',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
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
                return 0.125
            end
            return func
        end)(),
        ['PeriodicCount'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['PeriodicEffect'] = '',
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
        ['Link'] = '$$.spell.火焰之墙.PersistLoop_1',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
        ['event'] = event_register
    },
    ['RandomDelay_1'] = {
        ['ActorArray'] = nil,
        ['BaseAmount'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 0
                local level = base.unit_get_attribute(base.eff_param_caster(效果节点), "火焰之墙等级")
                result = 1.1 + level * (- 0.1)
                log.debug(result)
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
        ['Effect'] = '$$.spell.火焰之墙.Search_1',
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
        ['Link'] = '$$.spell.火焰之墙.RandomDelay_1',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
        ['event'] = event_register
    },
    ['RandomDelay_1_1'] = {
        ['ActorArray'] = nil,
        ['BaseAmount'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 0
                local level = base.unit_get_attribute(base.eff_param_caster(效果节点), "火焰之墙等级")
                result = 2 * (1.1 + level * (- 0.1))
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
        ['Effect'] = '$$.spell.火焰之墙.Search_1',
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
        ['ID'] = 'RandomDelay_1_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectRandomDelay',
        ['Template'] = 'EffectRandomDelay',
        ['Link'] = '$$.spell.火焰之墙.RandomDelay_1_1',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
        ['event'] = event_register
    },
    ['RandomDelay_1_2'] = {
        ['ActorArray'] = nil,
        ['BaseAmount'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 0
                local level = base.unit_get_attribute(base.eff_param_caster(效果节点), "火焰之墙等级")
                result = 3 * (1.1 + level * (- 0.1))
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
        ['Effect'] = '$$.spell.火焰之墙.Search_1',
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
        ['ID'] = 'RandomDelay_1_2',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectRandomDelay',
        ['Template'] = 'EffectRandomDelay',
        ['Link'] = '$$.spell.火焰之墙.RandomDelay_1_2',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
        ['event'] = event_register
    },
    ['RandomDelay_1_3'] = {
        ['ActorArray'] = nil,
        ['BaseAmount'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 0
                local level = base.unit_get_attribute(base.eff_param_caster(效果节点), "火焰之墙等级")
                result = 4 * (1.1 + level * (- 0.1))
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
        ['Effect'] = '$$.spell.火焰之墙.Search_1',
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
        ['ID'] = 'RandomDelay_1_3',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectRandomDelay',
        ['Template'] = 'EffectRandomDelay',
        ['Link'] = '$$.spell.火焰之墙.RandomDelay_1_3',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
        ['event'] = event_register
    },
    ['RandomDelay_1_4'] = {
        ['ActorArray'] = nil,
        ['BaseAmount'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 0
                local level = base.unit_get_attribute(base.eff_param_caster(效果节点), "火焰之墙等级")
                result = 5 * (1.1 + level * (- 0.1))
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
        ['Effect'] = '$$.spell.火焰之墙.Search_1',
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
        ['ID'] = 'RandomDelay_1_4',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectRandomDelay',
        ['Template'] = 'EffectRandomDelay',
        ['Link'] = '$$.spell.火焰之墙.RandomDelay_1_4',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
        ['event'] = event_register
    },
    ['RandomDelay_1_4_1'] = {
        ['ActorArray'] = nil,
        ['BaseAmount'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 0
                local level = base.unit_get_attribute(base.eff_param_caster(效果节点), "火焰之墙等级")
                result = 6 * (1.1 + level * (- 0.1))
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
        ['Effect'] = '$$.spell.火焰之墙.Switch_1',
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
        ['ID'] = 'RandomDelay_1_4_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectRandomDelay',
        ['Template'] = 'EffectRandomDelay',
        ['Link'] = '$$.spell.火焰之墙.RandomDelay_1_4_1',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
        ['event'] = event_register
    },
    ['RandomDelay_1_4_1_1'] = {
        ['ActorArray'] = nil,
        ['BaseAmount'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 0
                local level = base.unit_get_attribute(base.eff_param_caster(效果节点), "火焰之墙等级")
                result = 7 * (1.1 + level * (- 0.1))
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
        ['Effect'] = '$$.spell.火焰之墙.Switch_1_1',
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
        ['ID'] = 'RandomDelay_1_4_1_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectRandomDelay',
        ['Template'] = 'EffectRandomDelay',
        ['Link'] = '$$.spell.火焰之墙.RandomDelay_1_4_1_1',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
        ['event'] = event_register
    },
    ['RandomDelay_1_4_1_2'] = {
        ['ActorArray'] = nil,
        ['BaseAmount'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 0
                local level = base.unit_get_attribute(base.eff_param_caster(效果节点), "火焰之墙等级")
                result = 8 * (1.1 + level * (- 0.1))
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
        ['Effect'] = '$$.spell.火焰之墙.Switch_1_2',
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
        ['ID'] = 'RandomDelay_1_4_1_2',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectRandomDelay',
        ['Template'] = 'EffectRandomDelay',
        ['Link'] = '$$.spell.火焰之墙.RandomDelay_1_4_1_2',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
        ['event'] = event_register
    },
    ['RandomDelay_1_4_1_3'] = {
        ['ActorArray'] = nil,
        ['BaseAmount'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 0
                local level = base.unit_get_attribute(base.eff_param_caster(效果节点), "火焰之墙等级")
                result = 9 * (1.1 + level * (- 0.1))
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
        ['Effect'] = '$$.spell.火焰之墙.Switch_1_3',
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
        ['ID'] = 'RandomDelay_1_4_1_3',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectRandomDelay',
        ['Template'] = 'EffectRandomDelay',
        ['Link'] = '$$.spell.火焰之墙.RandomDelay_1_4_1_3',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
        ['event'] = event_register
    },
    ['RandomDelay_1_4_1_4'] = {
        ['ActorArray'] = nil,
        ['BaseAmount'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 0
                local level = base.unit_get_attribute(base.eff_param_caster(效果节点), "火焰之墙等级")
                result = 10 * (1.1 + level * (- 0.1))
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
        ['Effect'] = '$$.spell.火焰之墙.Switch_1_4',
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
        ['ID'] = 'RandomDelay_1_4_1_4',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectRandomDelay',
        ['Template'] = 'EffectRandomDelay',
        ['Link'] = '$$.spell.火焰之墙.RandomDelay_1_4_1_4',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
        ['event'] = event_register
    },
    ['RandomDelay_1_5'] = {
        ['ActorArray'] = nil,
        ['BaseAmount'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 5
                local level = base.unit_get_attribute(base.eff_param_caster(效果节点), "火焰之墙等级")
                if level >= 1 then
                    result = 5.7
                end
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
        ['Effect'] = '$$.spell.火焰之墙.UnitRemove_1',
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
        ['ID'] = 'RandomDelay_1_5',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectRandomDelay',
        ['Template'] = 'EffectRandomDelay',
        ['Link'] = '$$.spell.火焰之墙.RandomDelay_1_5',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
        ['event'] = event_register
    },
    ['Search_1'] = {
        ['ActorArray'] = {
            [1] = '$$.spell.火焰之墙.ActorEffect_1',
        },
        ['Angle'] = {
            ['LocalOffset'] = 0,
            ['Location'] = {
                ['Effect'] = '',
                ['LocalVar'] = 'A',
                ['Value'] = 'Source',
            },
            ['Method'] = 'Facing',
            ['OtherLocation'] = {
                ['Effect'] = '',
                ['LocalVar'] = 'A',
                ['Value'] = 'Default',
            },
        },
        ['Arc'] = 30,
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['Height'] = 192,
        ['MaxCount'] = -1,
        ['Method'] = 'Circle',
        ['MinCount'] = 0,
        ['MinCountError'] = {
            ['ErrorSound'] = '',
            ['ErrorText'] = '',
            ['Result'] = 4,
        },
        ['Name'] = '搜索单位节点',
        ['Radius'] = (function ()
            local func = function (ref_param)
                return 150
            end
            return func
        end)(),
        ['ResponseFlags'] = {
            ['Acquire'] = false,
            ['Flee'] = false,
        },
        ['SearchEffect'] = '$$.spell.火焰之墙.Set_1',
        ['SearchFilter'] = '敌方,单位;盟友,守卫',
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
            ['Value'] = 'Default',
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
        ['Width'] = 64,
        ['ID'] = 'Search_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectSearch',
        ['Template'] = 'EffectSearch',
        ['Link'] = '$$.spell.火焰之墙.Search_1',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
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
            [1] = '$$.spell.火焰之墙.Damage_1',
            [2] = '$$.spell.火焰之墙.AddBuff_1',
            [3] = '$$.spell.火焰之墙.Switch_2',
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
        ['Link'] = '$$.spell.火焰之墙.Set_1',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
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
            [1] = '$$.spell.火焰之墙.RandomDelay_1',
            [2] = '$$.spell.火焰之墙.RandomDelay_1_1',
            [3] = '$$.spell.火焰之墙.RandomDelay_1_2',
            [4] = '$$.spell.火焰之墙.RandomDelay_1_3',
            [5] = '$$.spell.火焰之墙.RandomDelay_1_4',
            [6] = '$$.spell.火焰之墙.RandomDelay_1_4_1',
            [7] = '$$.spell.火焰之墙.RandomDelay_1_4_1_1',
            [8] = '$$.spell.火焰之墙.RandomDelay_1_4_1_2',
            [9] = '$$.spell.火焰之墙.RandomDelay_1_4_1_3',
            [10] = '$$.spell.火焰之墙.RandomDelay_1_4_1_4',
            [11] = '$$.spell.火焰之墙.RandomDelay_1_5',
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
        ['Link'] = '$$.spell.火焰之墙.Set_2',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
        ['event'] = event_register
    },
    ['Switch_1'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['CaseArray'] = {
            [1] = {
                ['Effect'] = '$$.spell.火焰之墙.Search_1',
                ['Validator'] = (function ()
                                        --- lua_plus ---
                    --- skip_undefined ---
                    local function func(效果节点)
                        local result = 2
                        local customErrorText
                        local Level = base.unit_get_attribute(base.eff_param_caster(效果节点), "火焰之墙等级")
                        if Level > 1 then
                            result = 0
                        else

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
        ['Link'] = '$$.spell.火焰之墙.Switch_1',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
        ['event'] = event_register
    },
    ['Switch_1_1'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['CaseArray'] = {
            [1] = {
                ['Effect'] = '$$.spell.火焰之墙.Search_1',
                ['Validator'] = (function ()
                                        --- lua_plus ---
                    --- skip_undefined ---
                    local function func(效果节点)
                        local result = 2
                        local customErrorText
                        local Level = base.unit_get_attribute(base.eff_param_caster(效果节点), "火焰之墙等级")
                        if Level > 2 then
                            result = 0
                        else

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
        ['ID'] = 'Switch_1_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectSwitch',
        ['Template'] = 'EffectSwitch',
        ['Link'] = '$$.spell.火焰之墙.Switch_1_1',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
        ['event'] = event_register
    },
    ['Switch_1_2'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['CaseArray'] = {
            [1] = {
                ['Effect'] = '$$.spell.火焰之墙.Search_1',
                ['Validator'] = (function ()
                                        --- lua_plus ---
                    --- skip_undefined ---
                    local function func(效果节点)
                        local result = 2
                        local customErrorText
                        local Level = base.unit_get_attribute(base.eff_param_caster(效果节点), "火焰之墙等级")
                        if Level > 3 then
                            result = 0
                        else

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
        ['ID'] = 'Switch_1_2',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectSwitch',
        ['Template'] = 'EffectSwitch',
        ['Link'] = '$$.spell.火焰之墙.Switch_1_2',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
        ['event'] = event_register
    },
    ['Switch_1_3'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['CaseArray'] = {
            [1] = {
                ['Effect'] = '$$.spell.火焰之墙.Search_1',
                ['Validator'] = (function ()
                                        --- lua_plus ---
                    --- skip_undefined ---
                    local function func(效果节点)
                        local result = 2
                        local customErrorText
                        local Level = base.unit_get_attribute(base.eff_param_caster(效果节点), "火焰之墙等级")
                        if Level > 4 then
                            result = 0
                        else

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
        ['ID'] = 'Switch_1_3',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectSwitch',
        ['Template'] = 'EffectSwitch',
        ['Link'] = '$$.spell.火焰之墙.Switch_1_3',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
        ['event'] = event_register
    },
    ['Switch_1_4'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['CaseArray'] = {
            [1] = {
                ['Effect'] = '$$.spell.火焰之墙.Search_1',
                ['Validator'] = (function ()
                                        --- lua_plus ---
                    --- skip_undefined ---
                    local function func(效果节点)
                        local result = 2
                        local customErrorText
                        local Level = base.unit_get_attribute(base.eff_param_caster(效果节点), "火焰之墙等级")
                        if Level > 5 then
                            result = 0
                        else

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
        ['ID'] = 'Switch_1_4',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectSwitch',
        ['Template'] = 'EffectSwitch',
        ['Link'] = '$$.spell.火焰之墙.Switch_1_4',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
        ['event'] = event_register
    },
    ['Switch_2'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['CaseArray'] = {
            [1] = {
                ['Effect'] = '$$.spell.火焰之墙.AddBuff_2',
                ['Validator'] = (function ()
                                        --- lua_plus ---
                    --- skip_undefined ---
                    local function func(效果节点)
                        local result = 1
                        local level = base.unit_get_attribute(base.eff_param_caster(效果节点), "炙烤秘籍")
                        local customErrorText
                        if level >= 1 then
                            result = 0
                            return result, customErrorText
                        else
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
        ['Name'] = 'Switch_2',
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
        ['ID'] = 'Switch_2',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectSwitch',
        ['Template'] = 'EffectSwitch',
        ['Link'] = '$$.spell.火焰之墙.Switch_2',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
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
        ['Effect'] = 'effect/eff_reverse/particle/unknown/huozhuozhen/ps_huozhuozhen_eff/particle.effect',
        ['Filter'] = {
            [1] = '弹道',
        },
        ['Icon'] = '',
        ['Inventorys'] = {
        },
        ['ModelData'] = '',
        ['ModelScaleFactor'] = 2,
        ['Name'] = '火墙',
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
            ['ModelScaleFactor'] = 2,
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
        ['Link'] = '$$.spell.火焰之墙.UnitMissile_1',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
        ['event'] = event_register
    },
    ['UnitRemove_1'] = {
        ['ActorArray'] = nil,
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
        ['Link'] = '$$.spell.火焰之墙.UnitRemove_1',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
        ['event'] = event_register
    },
    ['root'] = {
        ['ActorArray'] = nil,
        ['ClientSpell'] = {
            ['AfterCastParticles'] = {
            },
            ['AfterCastSoundId'] = nil,
            ['AfterCastSoundNeedBreak'] = 2,
            ['AssistName'] = '圆形指示器',
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
            ['TurnWithTarget'] = 1,
        },
        ['CreationEffect'] = '',
        ['CustomClientSpell'] = {
        },
        ['CustomSpellData'] = {
        },
        ['DefaultAnimationList'] = {
            [1] = 'human/barehanded_anim/hand_05/skill_025.ani',
        },
        ['EditorCategory'] = nil,
        ['Effect'] = '$$.spell.火焰之墙.CreateUnit_1',
        ['LevelUpEffect'] = '',
        ['Name'] = '火焰之墙',
        ['Responses'] = {
        },
        ['SimpleText'] = '',
        ['SimpleVideo'] = nil,
        ['SimpleVideoPreview'] = nil,
        ['SpellAnim'] = {
            ['Animation'] = 'human/barehanded_anim/hand_05/skill_025.ani',
            ['AnimationHasChannel'] = nil,
            ['AnimationHasShot'] = nil,
            ['CustomStageTime'] = {
                ['cast_channel_time'] = nil,
                ['cast_finish_time'] = 0.2,
                ['cast_shot_time'] = 0.15,
                ['cast_start_time'] = 0.5,
            },
            ['HasChannel'] = nil,
            ['HasShot'] = nil,
            ['IsAlias'] = nil,
            ['IsCustomTime'] = true,
            ['PreviewModel'] = nil,
        },
        ['SpellAttribute'] = {
            ['KnockDistance'] = nil,
            ['Damage'] = nil,
            ['Heal'] = nil,
        },
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
            ['charge_max_stack'] = 1,
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
            ['key'] = 'E',
            ['max_level'] = 5,
            ['max_value'] = 1,
            ['need_cast_in_range'] = 0,
            ['range'] = 0,
            ['rectangle_width'] = 0,
            ['show_stack'] = 1,
            ['target_type'] = 0,
        },
        ['StartEffect'] = '',
        ['TargetUnitFilter'] = '敌方,可见,单位;无敌,魔免,死亡',
        ['TargetUnitRange'] = 800,
        ['TargetUnitSorts'] = nil,
        ['Time'] = {
            ['cast_channel_time'] = 0,
            ['cast_finish_time'] = 0.2,
            ['cast_shot_time'] = 0.15,
            ['cast_start_time'] = 0.5,
        },
        ['attack_speed_affect_cooldown'] = 0,
        ['attack_speed_attribute'] = '',
        ['cast_type'] = 0,
        ['cool'] = 0,
        ['cost'] = 0,
        ['distance'] = 240,
        ['range'] = 300,
        ['skill_type'] = 0,
        ['target_type'] = 2,
        ['turn_imm_before_cast'] = false,
        ['ID'] = 'root',
        ['Class'] = 'spell',
        ['NodeType'] = 'SpellRoot',
        ['Template'] = 'SpellRoot',
        ['Link'] = '$$.spell.火焰之墙.root',
        ['user_data'] = user_data['$$.spell.火焰之墙'],
        ['event'] = event_register
    },
}

return mt