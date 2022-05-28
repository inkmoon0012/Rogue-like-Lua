-- ========================================================================
-- 【记录配置文件($$default_units_元素凝聚)】
-- 说明：技能所属的全部记录，除下面列出的记录外，技能记录树中还可以包含公共记录的根记录记录(common.xxx.xxx)。技能记录树所属记录只可以继承来自记录模板的记录记录（template.xxx）。特殊标记：1、#NIL代表强制赋值为nil，无视继承值。
-- ========================================================================

local user_data = require 'obj.effect.user_data'
local event_register = base.event_register
local mt = {
    ['LaunchMissileNoImpact_1'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['DoImpactUnit'] = false,
        ['FinalEffect'] = '',
        ['FinishActors'] = {
        },
        ['FinishEffect'] = '$$default_units.spell.元素凝聚.Search_1',
        ['ImpactActors'] = {
        },
        ['ImpactEffect'] = '',
        ['ImpactFinalTargetRadius'] = 0,
        ['ImpactMaxCount'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 0
                return result
            end
            return func
        end)(),
        ['ImpactSearchFilter'] = ';',
        ['ImpactSearchRange'] = (function ()
                        --- lua_plus ---
            --- skip_undefined ---
            local function func(效果节点)
                local result = 0
                return result
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
        ['MissileType'] = '$$default_units.spell.元素凝聚.UnitMissile_1',
        ['Name'] = '发射投射物节点(只命中目标)_1',
        ['ParabolaApex'] = (function ()
            local func = function (ref_param)
                return 300
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
                return 1000
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
        ['temp_height'] = nil,
        ['temp_impact_model'] = '',
        ['ID'] = 'LaunchMissileNoImpact_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectLaunchMissile',
        ['Template'] = 'EffectLaunchMissile',
        ['Link'] = '$$default_units.spell.元素凝聚.LaunchMissileNoImpact_1',
        ['user_data'] = user_data['$$default_units.spell.元素凝聚'],
        ['event'] = event_register
    },
    ['MoverTo_1'] = {
        ['Name'] = '目标移动器节点_1',
        ['accel'] = 2000,
        ['height'] = 10,
        ['hit_area'] = (function ()
            local func = function (ref_param)
                return 10
            end
            return func
        end)(),
        ['hit_same'] = false,
        ['hit_type'] = '全部',
        ['max_speed'] = 200000,
        ['min_speed'] = 0,
        ['model'] = '',
        ['parabola_height'] = 0,
        ['passive'] = false,
        ['speed'] = 100,
        ['tangent_direction'] = false,
        ['ID'] = 'MoverTo_1',
        ['Class'] = 'mover',
        ['NodeType'] = 'MoverTo',
        ['Template'] = 'MoverTo',
        ['Link'] = '$$default_units.spell.元素凝聚.MoverTo_1',
        ['user_data'] = user_data['$$default_units.spell.元素凝聚'],
        ['event'] = event_register
    },
    ['Search_1'] = {
        ['ActorArray'] = nil,
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
        ['SearchEffect'] = '$$default_units.spell.元素凝聚.Set_1',
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
        ['Link'] = '$$default_units.spell.元素凝聚.Search_1',
        ['user_data'] = user_data['$$default_units.spell.元素凝聚'],
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
            [1] = '$$default_units.spell.元素凝聚.UnitModifyFacing_1',
            [2] = '$$default_units.spell.元素凝聚.UnitApplyMover_1',
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
        ['Link'] = '$$default_units.spell.元素凝聚.Set_1',
        ['user_data'] = user_data['$$default_units.spell.元素凝聚'],
        ['event'] = event_register
    },
    ['UnitApplyMover_1'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['ImpactActors'] = {
        },
        ['ImpactEffect'] = '',
        ['ImpactMaxCount'] = (function ()
            local func = function (ref_param)
                return -1
            end
            return func
        end)(),
        ['ImpactSearchFilter'] = '敌方,单位;无敌,死亡',
        ['Mover'] = '$$default_units.spell.元素凝聚.MoverTo_1',
        ['MoverTarget'] = {
            ['Effect'] = '',
            ['LocalVar'] = 'A',
            ['Value'] = 'MainTarget',
        },
        ['Name'] = '添加单位移动器节点_1',
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
        ['temp_impact_model'] = '',
        ['ID'] = 'UnitApplyMover_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectUnitApplyMover',
        ['Template'] = 'EffectUnitApplyMover',
        ['Link'] = '$$default_units.spell.元素凝聚.UnitApplyMover_1',
        ['user_data'] = user_data['$$default_units.spell.元素凝聚'],
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
        ['Effect'] = 'effect/eff_Ceshi_1/particle/PS_Huo_5/particle.effect',
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
        ['Link'] = '$$default_units.spell.元素凝聚.UnitMissile_1',
        ['user_data'] = user_data['$$default_units.spell.元素凝聚'],
        ['event'] = event_register
    },
    ['UnitModifyFacing_1'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['Duration'] = 100,
        ['Facing'] = {
            ['LocalOffset'] = 180,
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
        ['Name'] = '修改单位朝向效果节点_1',
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
        ['ID'] = 'UnitModifyFacing_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectUnitModifyFacing',
        ['Template'] = 'EffectUnitModifyFacing',
        ['Link'] = '$$default_units.spell.元素凝聚.UnitModifyFacing_1',
        ['user_data'] = user_data['$$default_units.spell.元素凝聚'],
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
            ['TurnWithTarget'] = 0,
        },
        ['CreationEffect'] = '',
        ['CustomClientSpell'] = {
        },
        ['CustomSpellData'] = {
        },
        ['DefaultAnimationList'] = {
        },
        ['EditorCategory'] = nil,
        ['Effect'] = '$$default_units.spell.元素凝聚.LaunchMissileNoImpact_1',
        ['LevelUpEffect'] = '',
        ['Name'] = '元素凝聚',
        ['Responses'] = {
        },
        ['SimpleText'] = '',
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
            ['key'] = '',
            ['max_level'] = 1,
            ['max_value'] = 1,
            ['need_cast_in_range'] = 1,
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
            ['cast_finish_time'] = 0,
            ['cast_shot_time'] = 0,
            ['cast_start_time'] = 0,
        },
        ['attack_speed_affect_cooldown'] = 0,
        ['attack_speed_attribute'] = '',
        ['cast_type'] = 0,
        ['cool'] = 0,
        ['cost'] = 0,
        ['distance'] = 400,
        ['range'] = 800,
        ['skill_type'] = 0,
        ['target_type'] = 2,
        ['turn_imm_before_cast'] = false,
        ['ID'] = 'root',
        ['Class'] = 'spell',
        ['NodeType'] = 'SpellRoot',
        ['Template'] = 'SpellRoot',
        ['Link'] = '$$default_units.spell.元素凝聚.root',
        ['user_data'] = user_data['$$default_units.spell.元素凝聚'],
        ['event'] = event_register
    },
}

return mt