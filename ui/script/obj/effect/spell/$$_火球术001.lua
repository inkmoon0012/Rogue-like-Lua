-- ========================================================================
-- 【记录配置文件($$_火球术001)】
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
        ['Effect'] = '$$.spell.火球术001.Particle_1',
        ['EventCreation'] = 'on_cast_start',
        ['EventCreationModel'] = '',
        ['EventDestruction'] = 'on_cast_stop',
        ['EventDestructionModel'] = 'Death',
        ['FollowRotation'] = 1,
        ['KillOnDeactivate'] = 0,
        ['KillOnFinish'] = 1,
        ['Name'] = '火球爆炸',
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
        ['Link'] = '$$.spell.火球术001.ActorEffect_1',
        ['user_data'] = user_data['$$.spell.火球术001'],
        ['event'] = event_register
    },
    ['ActorEffect_2'] = {
        ['AutoScale'] = false,
        ['CreationFilter'] = {
            ['Ally'] = true,
            ['Enemy'] = true,
            ['Self'] = true,
        },
        ['Effect'] = '$$.spell.火球术001.Particle_2',
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
        ['SocketName'] = '',
        ['sync'] = true,
        ['ID'] = 'ActorEffect_2',
        ['Class'] = 'actor',
        ['NodeType'] = 'ActorEffect',
        ['Template'] = 'ActorEffect',
        ['Link'] = '$$.spell.火球术001.ActorEffect_2',
        ['user_data'] = user_data['$$.spell.火球术001'],
        ['event'] = event_register
    },
    ['AddBuff_1'] = {
        ['ActorArray'] = nil,
        ['BuffLink'] = '$$.buff.灼烧2.root',
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 0.2
            end
            return func
        end)(),
        ['Count'] = 1,
        ['Duration'] = nil,
        ['Name'] = '添加Buff节点_1',
        ['ResponseFlags'] = {
            ['Acquire'] = true,
            ['Flee'] = true,
        },
        ['SuppressValidatorFailOutput'] = true,
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
        ['Link'] = '$$.spell.火球术001.AddBuff_1',
        ['user_data'] = user_data['$$.spell.火球术001'],
        ['event'] = event_register
    },
    ['Damage_1'] = {
        ['ActorArray'] = {
            [1] = '$$.spell.火球术001.ActorEffect_2',
        },
        ['Amount'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local MagicAttack = base.unit_get_attribute(base.eff_param_caster(效果节点), "法术破甲")
                local CriticalRate = base.unit_get_attribute(base.eff_param_caster(效果节点), "暴击")
                local CriticalDamage = base.unit_get_attribute(base.eff_param_caster(效果节点), "暴击伤害")
                local level = base.unit_get_attribute(base.eff_param_caster(效果节点), "火球术等级")
                local level2 = base.unit_get_attribute(base.eff_param_caster(效果节点), "火球增效秘籍")
                local bonus = base.unit_get_attribute(base.eff_param_caster(效果节点), "穿透")
                local Resistance = base.unit_get_attribute(base.eff_param_target_unit(效果节点), "减伤")
                local talent1 = base.unit_get_attribute(base.eff_param_caster(效果节点), "火焰亲和天赋等级")
                local Result = 1
                local Random100 = math.random(1, 100)
                if (CriticalRate + 10 * level2) >= Random100 then
                    Result = (MagicAttack + talent1 * 5 + 10 * level) * (1 - Resistance) * CriticalDamage * bonus
                else
                    Result = (MagicAttack + talent1 * 5 + 10 * level) * (1 - Resistance) * bonus
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
        ['Link'] = '$$.spell.火球术001.Damage_1',
        ['user_data'] = user_data['$$.spell.火球术001'],
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
            [1] = '$$.spell.火球术001.ActorEffect_1',
        },
        ['ImpactEffect'] = '$$.spell.火球术001.Set_1',
        ['ImpactFinalTargetRadius'] = 0,
        ['ImpactMaxCount'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['ImpactSearchFilter'] = '敌方,单位;无敌,魔免,死亡',
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
        ['MissileType'] = '$$.spell.火球术001.UnitMissile_1',
        ['Name'] = '发射投射物节点_1',
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
        ['Link'] = '$$.spell.火球术001.LaunchMissile_1',
        ['user_data'] = user_data['$$.spell.火球术001'],
        ['event'] = event_register
    },
    ['Particle_1'] = {
        ['Asset'] = 'effect/eff_battle/particle/huoqiushu/ps_huoqiubaozha_1/particle.effect',
        ['AutoScaleBaseRadius'] = 128,
        ['Name'] = '粒子节点_1',
        ['Scale'] = 1,
        ['ID'] = 'Particle_1',
        ['Class'] = 'particle',
        ['NodeType'] = 'Particle',
        ['Template'] = 'Particle',
        ['Link'] = '$$.spell.火球术001.Particle_1',
        ['user_data'] = user_data['$$.spell.火球术001'],
        ['event'] = event_register
    },
    ['Particle_2'] = {
        ['Asset'] = 'effect/eff_tongyong/huoqiu_blast/particle.effect',
        ['AutoScaleBaseRadius'] = 128,
        ['Name'] = '粒子节点_2',
        ['Scale'] = 1,
        ['ID'] = 'Particle_2',
        ['Class'] = 'particle',
        ['NodeType'] = 'Particle',
        ['Template'] = 'Particle',
        ['Link'] = '$$.spell.火球术001.Particle_2',
        ['user_data'] = user_data['$$.spell.火球术001'],
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
                local MagicLevel = base.unit_get_attribute(base.eff_param_caster(效果节点), "火球术等级")
                return MagicLevel + 1
            end
            return func
        end)(),
        ['PeriodicEffect'] = '$$.spell.火球术001.PolarOffset_1',
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
        ['Link'] = '$$.spell.火球术001.PersistLoop_1',
        ['user_data'] = user_data['$$.spell.火球术001'],
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
                ['Value'] = 'MainTarget',
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
                return 1500
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
                return 20
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
        ['TargetEffect'] = '$$.spell.火球术001.LaunchMissile_1',
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
        ['Link'] = '$$.spell.火球术001.PolarOffset_1',
        ['user_data'] = user_data['$$.spell.火球术001'],
        ['event'] = event_register
    },
    ['RemoveBuff_1'] = {
        ['ActorArray'] = nil,
        ['BuffCategories'] = '可被驱散;',
        ['BuffLink'] = '$$.buff.闪现增益.root',
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
            ['Value'] = 'Caster',
        },
        ['TargetType'] = 'Unit',
        ['Validators'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 1
                local buff = base.buff_get_stack(base.unit_find_buff(base.eff_param_caster(效果节点), "$$.buff.闪现增益.root"))
                local customErrorText
                if buff >= 1 then
                    result = 0
                    return result, customErrorText
                else
                    return result, customErrorText
                end
            end
            return func
        end)(),
        ['ID'] = 'RemoveBuff_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectRemoveBuff',
        ['Template'] = 'EffectRemoveBuff',
        ['Link'] = '$$.spell.火球术001.RemoveBuff_1',
        ['user_data'] = user_data['$$.spell.火球术001'],
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
            [1] = '$$.spell.火球术001.Damage_1',
            [2] = '$$.spell.火球术001.AddBuff_1',
            [3] = '$$.spell.火球术001.RemoveBuff_1',
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
        ['Link'] = '$$.spell.火球术001.Set_1',
        ['user_data'] = user_data['$$.spell.火球术001'],
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
        ['Effect'] = 'effect/eff_tongyong/huoqiu2/particle.effect',
        ['Filter'] = {
            [1] = '弹道',
        },
        ['Icon'] = '',
        ['Inventorys'] = {
        },
        ['ModelData'] = '',
        ['ModelScaleFactor'] = 1,
        ['Name'] = '火球',
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
        ['Link'] = '$$.spell.火球术001.UnitMissile_1',
        ['user_data'] = user_data['$$.spell.火球术001'],
        ['event'] = event_register
    },
    ['root'] = {
        ['ActorArray'] = nil,
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
            [1] = 'human/barehanded_anim/hand_05/skill_02.ani',
        },
        ['EditorCategory'] = nil,
        ['Effect'] = '$$.spell.火球术001.PersistLoop_1',
        ['LevelUpEffect'] = '',
        ['Name'] = '火球术001',
        ['Responses'] = {
        },
        ['SimpleText'] = '',
        ['SimpleVideo'] = nil,
        ['SimpleVideoPreview'] = nil,
        ['SpellAnim'] = {
            ['Animation'] = 'human/barehanded_anim/hand_05/skill_02.ani',
            ['AnimationHasChannel'] = nil,
            ['AnimationHasShot'] = nil,
            ['CustomStageTime'] = {
                ['cast_channel_time'] = nil,
                ['cast_finish_time'] = 0.1,
                ['cast_shot_time'] = 0.25,
                ['cast_start_time'] = 0.35,
            },
            ['HasChannel'] = nil,
            ['HasShot'] = nil,
            ['IsAlias'] = false,
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
            ['break_cast_shot'] = 1,
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
            ['key'] = 'Q',
            ['max_level'] = 10,
            ['max_value'] = 1,
            ['need_cast_in_range'] = 1,
            ['range'] = 1200,
            ['rectangle_width'] = 75,
            ['show_stack'] = 0,
            ['target_type'] = 4,
        },
        ['StartEffect'] = '',
        ['TargetUnitFilter'] = '敌方,可见,单位;无敌,魔免,死亡',
        ['TargetUnitRange'] = 1000,
        ['TargetUnitSorts'] = {
            [1] = '$$default_units.func_ref.nearest_unit_to_caster.root',
        },
        ['Time'] = {
            ['cast_channel_time'] = 0,
            ['cast_finish_time'] = 0.1,
            ['cast_shot_time'] = 0.25,
            ['cast_start_time'] = 0.35,
        },
        ['attack_speed_affect_cooldown'] = 0,
        ['attack_speed_attribute'] = '',
        ['cast_type'] = 0,
        ['cool'] = 0.2,
        ['cost'] = 0,
        ['distance'] = 1200,
        ['range'] = 1200,
        ['skill_type'] = 0,
        ['target_type'] = 4,
        ['turn_imm_before_cast'] = false,
        ['ID'] = 'root',
        ['Class'] = 'spell',
        ['NodeType'] = 'SpellRoot',
        ['Template'] = 'SpellRoot',
        ['Link'] = '$$.spell.火球术001.root',
        ['user_data'] = user_data['$$.spell.火球术001'],
        ['event'] = event_register
    },
}

return mt