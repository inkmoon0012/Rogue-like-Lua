-- ========================================================================
-- 【记录配置文件($$default_units_闪现)】
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
        ['Effect'] = '$$default_units.spell.闪现.Particle_1',
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
            ['Z'] = 10,
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
        ['Link'] = '$$default_units.spell.闪现.ActorEffect_1',
        ['user_data'] = user_data['$$default_units.spell.闪现'],
        ['event'] = event_register
    },
    ['ActorEffect_3'] = {
        ['AutoScale'] = false,
        ['CreationFilter'] = {
            ['Ally'] = true,
            ['Enemy'] = true,
            ['Self'] = true,
        },
        ['Effect'] = '$$default_units.spell.闪现.Particle_2',
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
            ['Z'] = 10,
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
        ['ID'] = 'ActorEffect_3',
        ['Class'] = 'actor',
        ['NodeType'] = 'ActorEffect',
        ['Template'] = 'ActorEffect',
        ['Link'] = '$$default_units.spell.闪现.ActorEffect_3',
        ['user_data'] = user_data['$$default_units.spell.闪现'],
        ['event'] = event_register
    },
    ['AddBuff_1'] = {
        ['ActorArray'] = nil,
        ['BuffLink'] = '$$.buff.闪现增益.root',
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
        ['ID'] = 'AddBuff_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectAddBuff',
        ['Template'] = 'EffectAddBuff',
        ['Link'] = '$$default_units.spell.闪现.AddBuff_1',
        ['user_data'] = user_data['$$default_units.spell.闪现'],
        ['event'] = event_register
    },
    ['Particle_1'] = {
        ['Asset'] = 'effect/samplespells/blink/Blink_Target/particle.effect',
        ['AutoScaleBaseRadius'] = 128,
        ['Name'] = '粒子节点_1',
        ['Scale'] = 1,
        ['ID'] = 'Particle_1',
        ['Class'] = 'particle',
        ['NodeType'] = 'Particle',
        ['Template'] = 'Particle',
        ['Link'] = '$$default_units.spell.闪现.Particle_1',
        ['user_data'] = user_data['$$default_units.spell.闪现'],
        ['event'] = event_register
    },
    ['Particle_2'] = {
        ['Asset'] = 'effect/samplespells/blink/Blink_Caster/particle.effect',
        ['AutoScaleBaseRadius'] = 128,
        ['Name'] = '粒子节点_2',
        ['Scale'] = 1,
        ['ID'] = 'Particle_2',
        ['Class'] = 'particle',
        ['NodeType'] = 'Particle',
        ['Template'] = 'Particle',
        ['Link'] = '$$default_units.spell.闪现.Particle_2',
        ['user_data'] = user_data['$$default_units.spell.闪现'],
        ['event'] = event_register
    },
    ['RandomDelay_1'] = {
        ['ActorArray'] = {
            [1] = '$$default_units.spell.闪现.ActorEffect_3',
        },
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
        ['Effect'] = '$$default_units.spell.闪现.Teleport_1',
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
            ['Value'] = 'Caster',
        },
        ['TargetType'] = 'Point',
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
        ['Link'] = '$$default_units.spell.闪现.RandomDelay_1',
        ['user_data'] = user_data['$$default_units.spell.闪现'],
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
            [1] = '$$default_units.spell.闪现.RandomDelay_1',
            [2] = '$$default_units.spell.闪现.Switch_1',
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
        ['Link'] = '$$default_units.spell.闪现.Set_1',
        ['user_data'] = user_data['$$default_units.spell.闪现'],
        ['event'] = event_register
    },
    ['Switch_1'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['CaseArray'] = {
            [1] = {
                ['Effect'] = '$$default_units.spell.闪现.AddBuff_1',
                ['Validator'] = (function ()
                                        --- lua_plus ---
                    --- skip_undefined ---
                    local function func(效果节点)
                        local result = 1
                        local level = base.unit_get_attribute(base.eff_param_caster(效果节点), "闪烁能量秘籍")
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
        ['Link'] = '$$default_units.spell.闪现.Switch_1',
        ['user_data'] = user_data['$$default_units.spell.闪现'],
        ['event'] = event_register
    },
    ['Teleport_1'] = {
        ['ActorArray'] = {
            [1] = '$$default_units.spell.闪现.ActorEffect_1',
        },
        ['CanBeBlocked'] = true,
        ['CenterLocation'] = {
            ['Effect'] = '',
            ['LocalVar'] = 'A',
            ['Value'] = 'Default',
        },
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['MinDistance'] = 100,
        ['Name'] = '瞬移效果节点_1',
        ['Range'] = 700,
        ['ResponseFlags'] = {
            ['Acquire'] = false,
            ['Flee'] = false,
        },
        ['SuppressValidatorFailOutput'] = false,
        ['TargetLocation'] = {
            ['Effect'] = '',
            ['LocalVar'] = 'A',
            ['Value'] = 'MainTarget',
        },
        ['TargetType'] = 'Any',
        ['TeleportEffect'] = '',
        ['TeleportFlags'] = {
            ['ClearQueuedOrders'] = false,
            ['KeepOffsetToCenter'] = false,
            ['SyncOffset'] = false,
        },
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
            ['Value'] = 'Caster',
        },
        ['ID'] = 'Teleport_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectTeleport',
        ['Template'] = 'EffectTeleport',
        ['Link'] = '$$default_units.spell.闪现.Teleport_1',
        ['user_data'] = user_data['$$default_units.spell.闪现'],
        ['event'] = event_register
    },
    ['root'] = {
        ['ActorArray'] = {
        },
        ['ClientSpell'] = {
            ['AfterCastParticles'] = {
            },
            ['AfterCastSoundId'] = nil,
            ['AfterCastSoundNeedBreak'] = 2,
            ['AssistName'] = '指向性指示器',
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
            [1] = 'human/barehanded_anim/hand_05/blink_01.ani',
        },
        ['EditorCategory'] = {
            [1] = 'Move',
        },
        ['Effect'] = '$$default_units.spell.闪现.Set_1',
        ['LevelUpEffect'] = '',
        ['Name'] = '闪现',
        ['Responses'] = {
        },
        ['SimpleText'] = '冷却时间：<node-value node="root" field = "Game.cool"/>\r\n最远传送范围：<node-value node="Teleport_1" field = "Game.Range"/>\r\n最短传送范围：<node-value node="Teleport_1" field = "Game.MinDistance"/>',
        ['SimpleVideo'] = nil,
        ['SimpleVideoPreview'] = nil,
        ['SpellAnim'] = {
            ['Animation'] = 'human/barehanded_anim/hand_05/blink_01.ani',
            ['AnimationHasChannel'] = nil,
            ['AnimationHasShot'] = nil,
            ['CustomStageTime'] = {
                ['cast_channel_time'] = nil,
                ['cast_finish_time'] = 0.3,
                ['cast_shot_time'] = nil,
                ['cast_start_time'] = nil,
            },
            ['HasChannel'] = nil,
            ['HasShot'] = nil,
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
            ['Description'] = '向目标方向传送一段距离。',
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
            ['break_walk'] = 0,
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
            ['distance'] = 200,
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
            ['key'] = 'R',
            ['max_level'] = 1,
            ['max_value'] = 1,
            ['need_cast_in_range'] = 0,
            ['range'] = 1200,
            ['rectangle_width'] = 75,
            ['show_stack'] = 0,
            ['target_type'] = 2,
        },
        ['StartEffect'] = '',
        ['TargetUnitFilter'] = '敌方,可见,单位;无敌,魔免,死亡',
        ['TargetUnitRange'] = 800,
        ['TargetUnitSorts'] = nil,
        ['Time'] = {
            ['cast_channel_time'] = 0,
            ['cast_finish_time'] = 0.3,
            ['cast_shot_time'] = 0.095624558627605,
            ['cast_start_time'] = 0.0042342976666987,
        },
        ['attack_speed_affect_cooldown'] = 0,
        ['attack_speed_attribute'] = '',
        ['cast_type'] = 0,
        ['cool'] = 4,
        ['cost'] = 0,
        ['distance'] = 700,
        ['range'] = 700,
        ['skill_type'] = 0,
        ['target_type'] = 2,
        ['turn_imm_before_cast'] = false,
        ['ID'] = 'root',
        ['Class'] = 'spell',
        ['NodeType'] = 'SpellRoot',
        ['Template'] = 'SpellRoot',
        ['Link'] = '$$default_units.spell.闪现.root',
        ['user_data'] = user_data['$$default_units.spell.闪现'],
        ['event'] = event_register
    },
}

return mt