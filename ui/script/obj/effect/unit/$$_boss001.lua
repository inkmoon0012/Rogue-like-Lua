-- ========================================================================
-- 【记录配置文件($$_boss001)】
-- 说明：单位所属的全部记录，除下面列出的记录外，单位记录树中还可以包含公共记录的根记录记录(common.xxx.xxx)。单位记录树所属记录只可以继承来自记录模板的记录记录（template.xxx）。特殊标记：1、#NIL代表强制赋值为nil，无视继承值。
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
        ['Effect'] = '$$.unit.boss001.Particle_2',
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
        ['Link'] = '$$.unit.boss001.ActorEffect_1',
        ['user_data'] = user_data['$$.unit.boss001'],
        ['event'] = event_register
    },
    ['Damage_1'] = {
        ['ActorArray'] = {
            [1] = '$$.unit.boss001.ActorEffect_1',
        },
        ['Amount'] = (function ()
                        --- lua_plus ---
            local function func(效果节点)
                local result = base.unit_get_attribute(base.eff_param_caster(效果节点), "攻击")
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
        ['Link'] = '$$.unit.boss001.Damage_1',
        ['user_data'] = user_data['$$.unit.boss001'],
        ['event'] = event_register
    },
    ['Model_1'] = {
        ['ActorArray'] = nil,
        ['AnimMapping'] = {
            [1] = {
                ['NameFrom'] = 'Idle',
                ['NameTo'] = 'idle',
            },
            [2] = {
                ['NameFrom'] = 'Spell',
                ['NameTo'] = 'spellcast',
            },
            [3] = {
                ['NameFrom'] = 'Dead',
                ['NameTo'] = 'dead',
            },
            [4] = {
                ['NameFrom'] = 'Move',
                ['NameTo'] = 'move',
            },
        },
        ['Asset'] = 'characters/monster/sk_wild_boar/model.prefab',
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
        ['Link'] = '$$.unit.boss001.Model_1',
        ['user_data'] = user_data['$$.unit.boss001'],
        ['event'] = event_register
    },
    ['Particle_2'] = {
        ['Asset'] = 'effect/eff_tongyong/ps_shouji_1/particle.effect',
        ['AutoScaleBaseRadius'] = 128,
        ['Name'] = '粒子节点_2',
        ['Scale'] = 1,
        ['ID'] = 'Particle_2',
        ['Class'] = 'particle',
        ['NodeType'] = 'Particle',
        ['Template'] = 'Particle',
        ['Link'] = '$$.unit.boss001.Particle_2',
        ['user_data'] = user_data['$$.unit.boss001'],
        ['event'] = event_register
    },
    ['PolarOffset_1'] = {
        ['ActorArray'] = nil,
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
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['Distance'] = (function ()
            local func = function (ref_param)
                return 100
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
        ['TargetEffect'] = '',
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
        ['Link'] = '$$.unit.boss001.PolarOffset_1',
        ['user_data'] = user_data['$$.unit.boss001'],
        ['event'] = event_register
    },
    ['ResponseDamageAttacker_1'] = {
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
        ['Location'] = 'Attacker',
        ['Modification'] = (function ()
            local func = function (ref_param)
                return 0
            end
            return func
        end)(),
        ['Multiplier'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['Name'] = '造成伤害响应节点_1',
        ['Priority'] = 0,
        ['ResponseActors'] = {
        },
        ['ResponseDamageFlags'] = {
            ['Fatal'] = false,
            ['HandleNullifiedDamage'] = false,
            ['HandleZeroDamage'] = false,
        },
        ['ResponseEffect'] = '$$.unit.boss001.PolarOffset_1',
        ['ResponseTargetAtIncomingEffect'] = {
            ['Effect'] = '',
            ['LocalVar'] = 'A',
            ['Value'] = 'Target',
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
        ['ID'] = 'ResponseDamageAttacker_1',
        ['Class'] = 'response',
        ['NodeType'] = 'ResponseDamage',
        ['Template'] = 'Response',
        ['Link'] = '$$.unit.boss001.ResponseDamageAttacker_1',
        ['user_data'] = user_data['$$.unit.boss001'],
        ['event'] = event_register
    },
    ['Search_1'] = {
        ['ActorArray'] = nil,
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
        ['Arc'] = 120,
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['Height'] = 192,
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
                return 200
            end
            return func
        end)(),
        ['ResponseFlags'] = {
            ['Acquire'] = false,
            ['Flee'] = false,
        },
        ['SearchEffect'] = '$$.unit.boss001.Damage_1',
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
        ['Link'] = '$$.unit.boss001.Search_1',
        ['user_data'] = user_data['$$.unit.boss001'],
        ['event'] = event_register
    },
    ['SpellRootInstant_1'] = {
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
            ['TurnWithTarget'] = 0,
        },
        ['CreationEffect'] = '',
        ['CustomClientSpell'] = {
        },
        ['CustomSpellData'] = {
        },
        ['DefaultAnimationList'] = {
            [1] = 'attack',
        },
        ['EditorCategory'] = nil,
        ['Effect'] = '$$.unit.boss001.Search_1',
        ['LevelUpEffect'] = '',
        ['Name'] = '普攻',
        ['Responses'] = {
            [1] = '$$.unit.boss001.ResponseDamageAttacker_1',
        },
        ['SimpleText'] = '',
        ['SimpleVideo'] = nil,
        ['SimpleVideoPreview'] = nil,
        ['SpellAnim'] = {
            ['Animation'] = 'attack',
            ['AnimationHasChannel'] = nil,
            ['AnimationHasShot'] = nil,
            ['CustomStageTime'] = nil,
            ['HasChannel'] = nil,
            ['HasShot'] = nil,
            ['IsAlias'] = false,
            ['IsCustomTime'] = nil,
            ['PreviewModel'] = nil,
        },
        ['SpellAttribute'] = {},
        ['SpellData'] = {
            ['Categories'] = {
                [1] = '普通攻击',
                [2] = '可被禁用',
                [3] = '可被打断',
                [4] = '可被沉默',
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
            ['cast_finish_time'] = 0.57986354827881,
            ['cast_shot_time'] = 0.095177620649338,
            ['cast_start_time'] = 0.4582921564579,
        },
        ['attack_speed_affect_cooldown'] = 0,
        ['attack_speed_attribute'] = '攻击速度',
        ['cast_type'] = 0,
        ['cool'] = 0,
        ['cost'] = 0,
        ['distance'] = 0,
        ['range'] = 0,
        ['skill_type'] = 0,
        ['target_type'] = 0,
        ['turn_imm_before_cast'] = false,
        ['ID'] = 'SpellRootInstant_1',
        ['Class'] = 'spell',
        ['NodeType'] = 'SpellRoot',
        ['Template'] = 'SpellRoot',
        ['Link'] = '$$.unit.boss001.SpellRootInstant_1',
        ['user_data'] = user_data['$$.unit.boss001'],
        ['event'] = event_register
    },
    ['root'] = {
        ['ActorArray'] = {
        },
        ['AnimMapping'] = {
        },
        ['AttackableRadius'] = 60,
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
            ['攻击'] = 50,
            ['攻击范围'] = 175,
            ['攻击速度'] = 0.1,
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
            ['生命'] = 1500,
            ['生命恢复'] = nil,
            ['生命上限'] = 1500,
            ['神力秘籍'] = nil,
            ['嗜血秘籍'] = nil,
            ['视野范围'] = nil,
            ['守护光环等级'] = nil,
            ['撕裂秘籍'] = nil,
            ['搜敌范围'] = 500,
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
            ['转身速度'] = 200,
            ['灼烧等级'] = nil,
            ['逐日剑法天赋等级'] = nil,
            ['逐日斩等级'] = nil,
            ['逐日震荡秘籍'] = nil,
            ['最大转身速度'] = 1,
            ['最小转身速度'] = -1,
        },
        ['CustomUnitData'] = {
        },
        ['DefaultAI'] = '',
        ['Description'] = '',
        ['Effect'] = '',
        ['Filter'] = {
            [1] = '单位',
            [2] = '野怪',
        },
        ['Icon'] = '',
        ['Inventorys'] = {
        },
        ['ModelData'] = '$$.unit.boss001.Model_1',
        ['ModelScaleFactor'] = 1,
        ['Name'] = 'boss001',
        ['PackageInfo'] = 'characters/Monster/SK_Spider_Burrow_S/model.prefab',
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
            ['BloodBarType'] = 'BLOODBAR_TYPE_NORMAL',
            ['BloodHeightScale'] = 1,
            ['BloodWidthScale'] = 1,
            ['BornEffect'] = '',
            ['ClientSelectFoot'] = 0,
            ['ClientSelectHead'] = 150,
            ['ClientSelectRadius'] = 70,
            ['ClientSelectable'] = true,
            ['CollisionRadius'] = 24,
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
            ['HeroSkill'] = {
                [1] = '$$.unit.boss001.SpellRootInstant_1',
                [2] = '',
                [3] = '$$default_units.spell.雷霆一击.root',
            },
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
            ['UnitTag'] = '守卫',
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
        ['ID'] = 'root',
        ['Class'] = 'unit',
        ['NodeType'] = 'Unit',
        ['Template'] = 'Unit',
        ['Link'] = '$$.unit.boss001.root',
        ['user_data'] = user_data['$$.unit.boss001'],
        ['event'] = event_register
    },
}

return mt