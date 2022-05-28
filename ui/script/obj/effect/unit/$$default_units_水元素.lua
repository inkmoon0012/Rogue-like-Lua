-- ========================================================================
-- 【记录配置文件($$default_units_水元素)】
-- 说明：单位所属的全部记录，除下面列出的记录外，单位记录树中还可以包含公共记录的根记录记录(common.xxx.xxx)。单位记录树所属记录只可以继承来自记录模板的记录记录（template.xxx）。特殊标记：1、#NIL代表强制赋值为nil，无视继承值。
-- ========================================================================

local user_data = require 'obj.effect.user_data'
local event_register = base.event_register
local mt = {
    ['AddBuff_1'] = {
        ['ActorArray'] = nil,
        ['BuffLink'] = '$$.buff.冰冷（减速）.root',
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
        ['Link'] = '$$default_units.unit.水元素.AddBuff_1',
        ['user_data'] = user_data['$$default_units.unit.水元素'],
        ['event'] = event_register
    },
    ['Damage_1'] = {
        ['ActorArray'] = nil,
        ['Amount'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local MagicAttack = base.unit_get_attribute(base.eff_param_caster(效果节点), "攻击")
                local CriticalRate = base.unit_get_attribute(base.eff_param_caster(效果节点), "暴击")
                local CriticalDamage = base.unit_get_attribute(base.eff_param_caster(效果节点), "暴击伤害")
                local level = base.unit_get_attribute(base.player_get_hero(base.player(1)), "召唤水元素等级")
                local Resistance = base.unit_get_attribute(base.eff_param_target_unit(效果节点), "魔抗")
                local Result = 1
                local Random100 = math.random(1, 100)
                if CriticalRate >= Random100 then
                    Result = (MagicAttack + 10 * level) * (1 - Resistance) * CriticalDamage
                else
                    Result = (MagicAttack + 10 * level) * (1 - Resistance)
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
        ['Link'] = '$$default_units.unit.水元素.Damage_1',
        ['user_data'] = user_data['$$default_units.unit.水元素'],
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
        ['FinalEffect'] = '',
        ['FinishActors'] = {
        },
        ['FinishEffect'] = '',
        ['ImpactActors'] = {
        },
        ['ImpactEffect'] = '$$default_units.unit.水元素.Set_1',
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
                return 35
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
        ['Method'] = 'New',
        ['MissileType'] = '$$default_units.unit.水元素.UnitMissile_1',
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
        ['Link'] = '$$default_units.unit.水元素.LaunchMissile_1',
        ['user_data'] = user_data['$$default_units.unit.水元素'],
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
            [1] = '$$default_units.unit.水元素.Damage_1',
            [2] = '$$default_units.unit.水元素.AddBuff_1',
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
        ['Link'] = '$$default_units.unit.水元素.Set_1',
        ['user_data'] = user_data['$$default_units.unit.水元素'],
        ['event'] = event_register
    },
    ['SpellRootVector_1'] = {
        ['ActorArray'] = nil,
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
            [1] = 'attack',
        },
        ['EditorCategory'] = nil,
        ['Effect'] = '$$default_units.unit.水元素.LaunchMissile_1',
        ['LevelUpEffect'] = '',
        ['Name'] = '直线向量技能节点_1',
        ['Responses'] = {
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
            ['distance'] = 1200,
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
            ['range'] = 1200,
            ['rectangle_width'] = 75,
            ['show_stack'] = 0,
            ['target_type'] = 4,
        },
        ['StartEffect'] = '',
        ['TargetUnitFilter'] = '敌方,可见,单位;无敌,魔免,死亡',
        ['TargetUnitRange'] = 800,
        ['TargetUnitSorts'] = nil,
        ['Time'] = {
            ['cast_channel_time'] = 0,
            ['cast_finish_time'] = 0.94636553525925,
            ['cast_shot_time'] = 0.2529993057251,
            ['cast_start_time'] = 0.30063515901566,
        },
        ['attack_speed_affect_cooldown'] = 0,
        ['attack_speed_attribute'] = '',
        ['cast_type'] = 0,
        ['cool'] = 0,
        ['cost'] = 0,
        ['distance'] = 1200,
        ['range'] = 1200,
        ['skill_type'] = 0,
        ['target_type'] = 4,
        ['turn_imm_before_cast'] = false,
        ['ID'] = 'SpellRootVector_1',
        ['Class'] = 'spell',
        ['NodeType'] = 'SpellRoot',
        ['Template'] = 'SpellRoot',
        ['Link'] = '$$default_units.unit.水元素.SpellRootVector_1',
        ['user_data'] = user_data['$$default_units.unit.水元素'],
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
        ['Effect'] = 'effect/eff_reverse/particle/arch/ps_gongbing_1/particle.effect',
        ['Filter'] = {
            [1] = '弹道',
        },
        ['Icon'] = '',
        ['Inventorys'] = {
        },
        ['ModelData'] = '',
        ['ModelScaleFactor'] = 1,
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
        ['Link'] = '$$default_units.unit.水元素.UnitMissile_1',
        ['user_data'] = user_data['$$default_units.unit.水元素'],
        ['event'] = event_register
    },
    ['root'] = {
        ['ActorArray'] = nil,
        ['AnimMapping'] = {
        },
        ['AttackableRadius'] = 48,
        ['Attribute'] = {
            ['半月斩等级'] = nil,
            ['暴风雪等级'] = nil,
            ['暴击'] = 15,
            ['暴击伤害'] = 1.5,
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
            ['攻击范围'] = 500,
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
            ['生命'] = 50,
            ['生命恢复'] = nil,
            ['生命上限'] = 50,
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
            ['转身速度'] = 100,
            ['灼烧等级'] = nil,
            ['逐日剑法天赋等级'] = nil,
            ['逐日斩等级'] = nil,
            ['逐日震荡秘籍'] = nil,
            ['最大转身速度'] = 1,
            ['最小转身速度'] = -1,
        },
        ['CustomUnitData'] = {
        },
        ['DefaultAI'] = '召唤物',
        ['Description'] = '',
        ['Effect'] = '',
        ['Filter'] = {
            [1] = '单位',
            [2] = '小兵',
            [3] = '空中',
        },
        ['Icon'] = '',
        ['Inventorys'] = {
        },
        ['ModelData'] = '',
        ['ModelScaleFactor'] = 1,
        ['Name'] = '水元素',
        ['PackageInfo'] = 'characters/monster/sk_ghost/model.prefab',
        ['PlanerShadow'] = true,
        ['Responses'] = {
        },
        ['Restrictions'] = {
            [1] = '召唤',
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
                [1] = '$$default_units.spell.治疗结界.root',
                [2] = '$$default_units.unit.水元素.SpellRootVector_1',
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
                [1] = '召唤',
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
        ['ID'] = 'root',
        ['Class'] = 'unit',
        ['NodeType'] = 'Unit',
        ['Template'] = 'Unit',
        ['Link'] = '$$default_units.unit.水元素.root',
        ['user_data'] = user_data['$$default_units.unit.水元素'],
        ['event'] = event_register
    },
}

return mt