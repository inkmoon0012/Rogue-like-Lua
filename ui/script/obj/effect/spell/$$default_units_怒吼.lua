-- ========================================================================
-- 【记录配置文件($$default_units_怒吼)】
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
        ['Effect'] = '$$default_units.spell.怒吼.Particle_2',
        ['EventCreation'] = 'on_cast_shot',
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
        ['Link'] = '$$default_units.spell.怒吼.ActorEffect_1',
        ['user_data'] = user_data['$$default_units.spell.怒吼'],
        ['event'] = event_register
    },
    ['ActorEffect_2'] = {
        ['AutoScale'] = false,
        ['CreationFilter'] = {
            ['Ally'] = true,
            ['Enemy'] = true,
            ['Self'] = true,
        },
        ['Effect'] = '$$default_units.spell.怒吼.Particle_1',
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
        ['SocketName'] = 'socket_overhead',
        ['sync'] = true,
        ['ID'] = 'ActorEffect_2',
        ['Class'] = 'actor',
        ['NodeType'] = 'ActorEffect',
        ['Template'] = 'ActorEffect',
        ['Link'] = '$$default_units.spell.怒吼.ActorEffect_2',
        ['user_data'] = user_data['$$default_units.spell.怒吼'],
        ['event'] = event_register
    },
    ['AddBuff_1'] = {
        ['ActorArray'] = {
        },
        ['BuffLink'] = '$$default_units.spell.怒吼.Buff_1',
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
        ['Link'] = '$$default_units.spell.怒吼.AddBuff_1',
        ['user_data'] = user_data['$$default_units.spell.怒吼'],
        ['event'] = event_register
    },
    ['Buff_1'] = {
        ['ActorArray'] = {
            [1] = '$$default_units.spell.怒吼.ActorEffect_2',
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
                return 5
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
            [1] = '$$default_units.spell.怒吼.ResponseDamageDefender_1',
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
        ['Link'] = '$$default_units.spell.怒吼.Buff_1',
        ['user_data'] = user_data['$$default_units.spell.怒吼'],
        ['event'] = event_register
    },
    ['Particle_1'] = {
        ['Asset'] = 'effect/samplespells/roar/roar/particle.effect',
        ['AutoScaleBaseRadius'] = 128,
        ['Name'] = '粒子节点_1',
        ['Scale'] = 1,
        ['ID'] = 'Particle_1',
        ['Class'] = 'particle',
        ['NodeType'] = 'Particle',
        ['Template'] = 'Particle',
        ['Link'] = '$$default_units.spell.怒吼.Particle_1',
        ['user_data'] = user_data['$$default_units.spell.怒吼'],
        ['event'] = event_register
    },
    ['Particle_2'] = {
        ['Asset'] = 'effect/samplespells/taunt/taunt_caster/particle.effect',
        ['AutoScaleBaseRadius'] = 128,
        ['Name'] = '粒子节点_2',
        ['Scale'] = 1,
        ['ID'] = 'Particle_2',
        ['Class'] = 'particle',
        ['NodeType'] = 'Particle',
        ['Template'] = 'Particle',
        ['Link'] = '$$default_units.spell.怒吼.Particle_2',
        ['user_data'] = user_data['$$default_units.spell.怒吼'],
        ['event'] = event_register
    },
    ['ResponseDamageDefender_1'] = {
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['DamageType'] = {
            ['魔法'] = true,
            ['物理'] = true,
        },
        ['InComingEffectValidator'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 0
                return result
            end
            return func
        end)(),
        ['Limit'] = (function ()
            local func = function (ref_param)
                return -1
            end
            return func
        end)(),
        ['Location'] = 'Defender',
        ['Modification'] = (function ()
            local func = function (ref_param)
                return 0
            end
            return func
        end)(),
        ['Multiplier'] = (function ()
                        --- lua_plus ---
            local function func(效果节点)
                local result = 1
                local 单位 = base.eff_param_caster(效果节点)
                local 单位组 = base.get_area_unit_group(base.circle(base.unit_get_point(单位), 300), ";,死亡")
                local 单位组 = base.unit_group_filter_group(单位组, base.target_filters:new("敌方;,死亡,无敌"))
                local n = 单位组:get_length()
                if n > 0 then
                    result = n * 0.05
                    result = 1 - result
                    result = base.math.max(0.5, result)
                    log.debug(result)
                else

                end
                return result
            end
            return func
        end)(),
        ['Name'] = '受到伤害响应节点_1',
        ['Priority'] = 0,
        ['ResponseActors'] = {
        },
        ['ResponseDamageFlags'] = {
            ['Fatal'] = false,
            ['HandleNullifiedDamage'] = false,
            ['HandleZeroDamage'] = false,
        },
        ['ResponseEffect'] = '',
        ['ResponseTargetAtIncomingEffect'] = {
            ['Effect'] = '',
            ['LocalVar'] = 'A',
            ['Value'] = 'Caster',
        },
        ['TargetFilter'] = ';',
        ['Validator'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 0
                return result
            end
            return func
        end)(),
        ['ID'] = 'ResponseDamageDefender_1',
        ['Class'] = 'response',
        ['NodeType'] = 'ResponseDamage',
        ['Template'] = 'Response',
        ['Link'] = '$$default_units.spell.怒吼.ResponseDamageDefender_1',
        ['user_data'] = user_data['$$default_units.spell.怒吼'],
        ['event'] = event_register
    },
    ['root'] = {
        ['ActorArray'] = {
            [1] = '$$default_units.spell.怒吼.ActorEffect_1',
        },
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
            [1] = 'human/barehanded_anim/hand_05/skill_08.ani',
        },
        ['EditorCategory'] = {
            [1] = 'Buff',
        },
        ['Effect'] = '$$default_units.spell.怒吼.AddBuff_1',
        ['LevelUpEffect'] = '',
        ['Name'] = '怒吼',
        ['Responses'] = {
        },
        ['SimpleText'] = '根据周围敌人数量获得伤害减免\r\n持续<node-value node="Buff_1" field = "Game.Duration"/>秒',
        ['SimpleVideo'] = nil,
        ['SimpleVideoPreview'] = nil,
        ['SpellAnim'] = {
            ['Animation'] = 'human/barehanded_anim/hand_05/skill_08.ani',
            ['AnimationHasChannel'] = nil,
            ['AnimationHasShot'] = nil,
            ['CustomStageTime'] = nil,
            ['HasChannel'] = nil,
            ['HasShot'] = nil,
            ['IsAlias'] = nil,
            ['IsCustomTime'] = false,
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
            ['Description'] = '在一段时间内获得伤害减免，数值与周围敌军单位数量相关。',
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
            ['cast_finish_time'] = 0.84474241733551,
            ['cast_shot_time'] = 0.21933659911156,
            ['cast_start_time'] = 0.33592095971107,
        },
        ['attack_speed_affect_cooldown'] = 0,
        ['attack_speed_attribute'] = '',
        ['cast_type'] = 0,
        ['cool'] = 1,
        ['cost'] = 0,
        ['distance'] = 0,
        ['range'] = 300,
        ['skill_type'] = 0,
        ['target_type'] = 0,
        ['turn_imm_before_cast'] = false,
        ['ID'] = 'root',
        ['Class'] = 'spell',
        ['NodeType'] = 'SpellRoot',
        ['Template'] = 'SpellRoot',
        ['Link'] = '$$default_units.spell.怒吼.root',
        ['user_data'] = user_data['$$default_units.spell.怒吼'],
        ['event'] = event_register
    },
}

return mt