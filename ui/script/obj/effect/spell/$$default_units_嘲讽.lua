-- ========================================================================
-- 【记录配置文件($$default_units_嘲讽)】
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
        ['Effect'] = '$$default_units.spell.嘲讽.Particle_1',
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
        ['SocketName'] = 'socket_overhead',
        ['sync'] = true,
        ['ID'] = 'ActorEffect_1',
        ['Class'] = 'actor',
        ['NodeType'] = 'ActorEffect',
        ['Template'] = 'ActorEffect',
        ['Link'] = '$$default_units.spell.嘲讽.ActorEffect_1',
        ['user_data'] = user_data['$$default_units.spell.嘲讽'],
        ['event'] = event_register
    },
    ['ActorEffect_2'] = {
        ['AutoScale'] = false,
        ['CreationFilter'] = {
            ['Ally'] = true,
            ['Enemy'] = true,
            ['Self'] = true,
        },
        ['Effect'] = '$$default_units.spell.嘲讽.Particle_2',
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
        ['SocketName'] = 'socket_chest',
        ['sync'] = true,
        ['ID'] = 'ActorEffect_2',
        ['Class'] = 'actor',
        ['NodeType'] = 'ActorEffect',
        ['Template'] = 'ActorEffect',
        ['Link'] = '$$default_units.spell.嘲讽.ActorEffect_2',
        ['user_data'] = user_data['$$default_units.spell.嘲讽'],
        ['event'] = event_register
    },
    ['IssueOrder_1'] = {
        ['Abil'] = '',
        ['ActorArray'] = {
        },
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['CmdIndex'] = 0,
        ['Name'] = '单位指令效果节点_1',
        ['OrderType'] = 'Attack',
        ['ResponseFlags'] = {
            ['Acquire'] = false,
            ['Flee'] = false,
        },
        ['SuppressValidatorFailOutput'] = false,
        ['TargetLocation'] = {
            ['Effect'] = '',
            ['LocalVar'] = 'A',
            ['Value'] = 'Caster',
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
        ['WhichUnit'] = {
            ['Effect'] = '',
            ['LocalVar'] = 'A',
            ['Value'] = 'Default',
        },
        ['ID'] = 'IssueOrder_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectIssueOrder',
        ['Template'] = 'EffectIssueOrder',
        ['Link'] = '$$default_units.spell.嘲讽.IssueOrder_1',
        ['user_data'] = user_data['$$default_units.spell.嘲讽'],
        ['event'] = event_register
    },
    ['Particle_1'] = {
        ['Asset'] = 'effect/samplespells/taunt/taunt_target/particle.effect',
        ['AutoScaleBaseRadius'] = 128,
        ['Name'] = '粒子节点_1',
        ['Scale'] = 1,
        ['ID'] = 'Particle_1',
        ['Class'] = 'particle',
        ['NodeType'] = 'Particle',
        ['Template'] = 'Particle',
        ['Link'] = '$$default_units.spell.嘲讽.Particle_1',
        ['user_data'] = user_data['$$default_units.spell.嘲讽'],
        ['event'] = event_register
    },
    ['Particle_2'] = {
        ['Asset'] = 'effect/samplespells/taunt/taunt_caster/particle.effect',
        ['AutoScaleBaseRadius'] = 128,
        ['Name'] = '粒子节点_2',
        ['Scale'] = 5.65,
        ['ID'] = 'Particle_2',
        ['Class'] = 'particle',
        ['NodeType'] = 'Particle',
        ['Template'] = 'Particle',
        ['Link'] = '$$default_units.spell.嘲讽.Particle_2',
        ['user_data'] = user_data['$$default_units.spell.嘲讽'],
        ['event'] = event_register
    },
    ['RandomDelay_1'] = {
        ['ActorArray'] = nil,
        ['BaseAmount'] = (function ()
            local func = function (ref_param)
                return 0.001
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
        ['Effect'] = '$$default_units.spell.嘲讽.IssueOrder_1',
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
        ['Link'] = '$$default_units.spell.嘲讽.RandomDelay_1',
        ['user_data'] = user_data['$$default_units.spell.嘲讽'],
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
        ['MaxCount'] = 10,
        ['Method'] = 'Circle',
        ['MinCount'] = 0,
        ['MinCountError'] = {
            ['ErrorSound'] = '',
            ['ErrorText'] = '',
            ['Result'] = 4,
        },
        ['Name'] = '搜索单位节点_1',
        ['Radius'] = (function ()
            local func = function (ref_param)
                return 400
            end
            return func
        end)(),
        ['ResponseFlags'] = {
            ['Acquire'] = false,
            ['Flee'] = false,
        },
        ['SearchEffect'] = '$$default_units.spell.嘲讽.Set_1',
        ['SearchFilter'] = '敌方,单位;自身',
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
        ['Link'] = '$$default_units.spell.嘲讽.Search_1',
        ['user_data'] = user_data['$$default_units.spell.嘲讽'],
        ['event'] = event_register
    },
    ['Set_1'] = {
        ['ActorArray'] = {
            [1] = '$$default_units.spell.嘲讽.ActorEffect_1',
        },
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['EffectArray'] = {
            [1] = '$$default_units.spell.嘲讽.RandomDelay_1',
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
        ['Link'] = '$$default_units.spell.嘲讽.Set_1',
        ['user_data'] = user_data['$$default_units.spell.嘲讽'],
        ['event'] = event_register
    },
    ['Set_2'] = {
        ['ActorArray'] = {
            [1] = '$$default_units.spell.嘲讽.ActorEffect_2',
        },
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['EffectArray'] = {
            [1] = '$$default_units.spell.嘲讽.Search_1',
            [2] = '',
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
        ['Link'] = '$$default_units.spell.嘲讽.Set_2',
        ['user_data'] = user_data['$$default_units.spell.嘲讽'],
        ['event'] = event_register
    },
    ['StopOrder_1'] = {
        ['Abil'] = '',
        ['AbilCategory'] = '可被打断;',
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['Name'] = '打断指令效果节点_1',
        ['ResponseFlags'] = {
            ['Acquire'] = false,
            ['Flee'] = false,
        },
        ['StopOrderFlags'] = {
            ['ClearQueuedOrders'] = true,
            ['Stop'] = false,
            ['StopAttack'] = false,
            ['StopSpell'] = false,
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
        ['ID'] = 'StopOrder_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectStopOrder',
        ['Template'] = 'EffectStopOrder',
        ['Link'] = '$$default_units.spell.嘲讽.StopOrder_1',
        ['user_data'] = user_data['$$default_units.spell.嘲讽'],
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
            [1] = 'human/barehanded_anim/hand_05/skill_024.ani',
        },
        ['EditorCategory'] = {
            [1] = 'Control',
        },
        ['Effect'] = '$$default_units.spell.嘲讽.Set_2',
        ['LevelUpEffect'] = '',
        ['Name'] = '嘲讽',
        ['Responses'] = {
        },
        ['SimpleText'] = '施法距离：<node-value node="root" field = "Game.range"/>\r\n光标范围：<node-value node="root" field = "Game.distance"/>\r\n冷却时间：<node-value node="root" field = "Game.cool"/>\r\n搜索敌人范围：<node-value node="Search_1" field = "Game.Radius"/>\r\n最多嘲讽<node-value node="Search_1" field = "Game.MaxCount"/>个单位',
        ['SimpleVideo'] = nil,
        ['SimpleVideoPreview'] = nil,
        ['SpellAnim'] = {
            ['Animation'] = 'human/barehanded_anim/hand_05/skill_024.ani',
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
            ['Description'] = '强迫最近的多个敌人攻击自己。',
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
        ['TargetUnitFilter'] = ';',
        ['TargetUnitRange'] = 800,
        ['TargetUnitSorts'] = nil,
        ['Time'] = {
            ['cast_channel_time'] = 0,
            ['cast_finish_time'] = 0.49329572916031,
            ['cast_shot_time'] = 0.18701478838921,
            ['cast_start_time'] = 0.31968948245049,
        },
        ['attack_speed_affect_cooldown'] = 0,
        ['attack_speed_attribute'] = '',
        ['cast_type'] = 0,
        ['cool'] = 4,
        ['cost'] = 0,
        ['distance'] = 400,
        ['range'] = 400,
        ['skill_type'] = 0,
        ['target_type'] = 0,
        ['turn_imm_before_cast'] = false,
        ['ID'] = 'root',
        ['Class'] = 'spell',
        ['NodeType'] = 'SpellRoot',
        ['Template'] = 'SpellRoot',
        ['Link'] = '$$default_units.spell.嘲讽.root',
        ['user_data'] = user_data['$$default_units.spell.嘲讽'],
        ['event'] = event_register
    },
}

return mt