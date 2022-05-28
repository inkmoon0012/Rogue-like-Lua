-- ========================================================================
-- 【记录配置文件($$default_units_肉勾)】
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
        ['Effect'] = '$$default_units.spell.肉勾.Particle_1',
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
        ['SocketName'] = 'socket_hit',
        ['sync'] = true,
        ['ID'] = 'ActorEffect_1',
        ['Class'] = 'actor',
        ['NodeType'] = 'ActorEffect',
        ['Template'] = 'ActorEffect',
        ['Link'] = '$$default_units.spell.肉勾.ActorEffect_1',
        ['user_data'] = user_data['$$default_units.spell.肉勾'],
        ['event'] = event_register
    },
    ['ActorEffect_2'] = {
        ['AutoScale'] = false,
        ['CreationFilter'] = {
            ['Ally'] = true,
            ['Enemy'] = true,
            ['Self'] = true,
        },
        ['Effect'] = '$$default_units.spell.肉勾.Particle_1',
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
        ['SocketName'] = 'socket_hit',
        ['sync'] = true,
        ['ID'] = 'ActorEffect_2',
        ['Class'] = 'actor',
        ['NodeType'] = 'ActorEffect',
        ['Template'] = 'ActorEffect',
        ['Link'] = '$$default_units.spell.肉勾.ActorEffect_2',
        ['user_data'] = user_data['$$default_units.spell.肉勾'],
        ['event'] = event_register
    },
    ['Damage_1'] = {
        ['ActorArray'] = {
            [1] = '$$default_units.spell.肉勾.ActorEffect_1',
        },
        ['Amount'] = (function ()
            local func = function (ref_param)
                return 120
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
        ['Link'] = '$$default_units.spell.肉勾.Damage_1',
        ['user_data'] = user_data['$$default_units.spell.肉勾'],
        ['event'] = event_register
    },
    ['Damage_2'] = {
        ['ActorArray'] = {
            [1] = '$$default_units.spell.肉勾.ActorEffect_2',
        },
        ['Amount'] = (function ()
            local func = function (ref_param)
                return 120
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
        ['Name'] = '伤害效果节点_2',
        ['ResponseFlags'] = {
            ['Acquire'] = true,
            ['Flee'] = true,
        },
        ['SuppressValidatorFailOutput'] = false,
        ['TargetLocation'] = {
            ['Effect'] = '$$default_units.spell.肉勾.Set_1',
            ['LocalVar'] = 'A',
            ['Value'] = 'Target',
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
        ['Link'] = '$$default_units.spell.肉勾.Damage_2',
        ['user_data'] = user_data['$$default_units.spell.肉勾'],
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
        ['FinishEffect'] = '$$default_units.spell.肉勾.Set_2',
        ['ImpactActors'] = {
        },
        ['ImpactEffect'] = '$$default_units.spell.肉勾.Set_1',
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
                return 50
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
        ['MissileType'] = '$$default_units.spell.肉勾.UnitMissile_1',
        ['Name'] = '发射投射物节点(碰撞中途单位)',
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
        ['Link'] = '$$default_units.spell.肉勾.LaunchMissile_1',
        ['user_data'] = user_data['$$default_units.spell.肉勾'],
        ['event'] = event_register
    },
    ['LaunchMissile_1_1'] = {
        ['ActorArray'] = nil,
        ['CanBeBlocked'] = true,
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['DoImpactUnit'] = true,
        ['FinalEffect'] = '$$default_units.spell.肉勾.Damage_2',
        ['FinishActors'] = {
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
        ['ImpactSearchFilter'] = ';自身,同一玩家,盟友,中立,敌方,可见,无敌,魔免,物免,缴械,定身,免死,失控,蝗虫,召唤,兵营,弹道,单位,箭塔,建筑,基地,泉水,商店,守卫,物品,小兵,野怪,英雄',
        ['ImpactSearchRange'] = (function ()
            local func = function (ref_param)
                return 50
            end
            return func
        end)(),
        ['LaunchLocation'] = {
            ['Effect'] = '$$default_units.spell.肉勾.Set_1',
            ['LocalVar'] = 'A',
            ['Value'] = 'Target',
        },
        ['LaunchOffset'] = {
            ['Angle'] = {
                ['LocalOffset'] = 0,
                ['Location'] = {
                    ['Effect'] = '$$default_units.spell.肉勾.Set_1',
                    ['LocalVar'] = 'A',
                    ['Value'] = 'Target',
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
        ['LaunchTargetType'] = 'Any',
        ['Method'] = 'New',
        ['MissileType'] = '$$default_units.spell.肉勾.UnitMissile_1_1',
        ['Name'] = '发射投射物节点(碰撞中途单位)',
        ['ParabolaApex'] = (function ()
            local func = function (ref_param)
                return 0
            end
            return func
        end)(),
        ['ParabolaLandingHeight'] = 0,
        ['Prevent'] = {
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
            ['Value'] = 'Caster',
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
        ['ID'] = 'LaunchMissile_1_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectLaunchMissile',
        ['Template'] = 'EffectLaunchMissile',
        ['Link'] = '$$default_units.spell.肉勾.LaunchMissile_1_1',
        ['user_data'] = user_data['$$default_units.spell.肉勾'],
        ['event'] = event_register
    },
    ['LaunchMissile_1_1_1'] = {
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
        ['ImpactEffect'] = '',
        ['ImpactFinalTargetRadius'] = 0,
        ['ImpactMaxCount'] = (function ()
            local func = function (ref_param)
                return 1
            end
            return func
        end)(),
        ['ImpactSearchFilter'] = ';自身,同一玩家,盟友,中立,敌方,可见,无敌,魔免,物免,缴械,定身,免死,失控,蝗虫,召唤,兵营,弹道,单位,箭塔,建筑,基地,泉水,商店,守卫,物品,小兵,野怪,英雄',
        ['ImpactSearchRange'] = (function ()
            local func = function (ref_param)
                return 50
            end
            return func
        end)(),
        ['LaunchLocation'] = {
            ['Effect'] = '$$default_units.spell.肉勾.LaunchMissile_1',
            ['LocalVar'] = 'A',
            ['Value'] = 'Target',
        },
        ['LaunchOffset'] = {
            ['Angle'] = {
                ['LocalOffset'] = 0,
                ['Location'] = {
                    ['Effect'] = '$$default_units.spell.肉勾.Set_1',
                    ['LocalVar'] = 'A',
                    ['Value'] = 'Target',
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
        ['LaunchTargetType'] = 'Any',
        ['Method'] = 'New',
        ['MissileType'] = '$$default_units.spell.肉勾.UnitMissile_1_2',
        ['Name'] = '发射投射物节点(碰撞中途单位)',
        ['ParabolaApex'] = (function ()
            local func = function (ref_param)
                return 0
            end
            return func
        end)(),
        ['ParabolaLandingHeight'] = 0,
        ['Prevent'] = {
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
            ['Value'] = 'Caster',
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
        ['ID'] = 'LaunchMissile_1_1_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectLaunchMissile',
        ['Template'] = 'EffectLaunchMissile',
        ['Link'] = '$$default_units.spell.肉勾.LaunchMissile_1_1_1',
        ['user_data'] = user_data['$$default_units.spell.肉勾'],
        ['event'] = event_register
    },
    ['MoverTo_1'] = {
        ['Name'] = '目标移动器节点_1',
        ['accel'] = 1000,
        ['height'] = 10,
        ['hit_area'] = (function ()
            local func = function (ref_param)
                return 10
            end
            return func
        end)(),
        ['hit_same'] = false,
        ['hit_type'] = '全部',
        ['max_speed'] = 1000,
        ['min_speed'] = 0,
        ['model'] = '',
        ['parabola_height'] = 0,
        ['passive'] = false,
        ['speed'] = 1000,
        ['tangent_direction'] = false,
        ['ID'] = 'MoverTo_1',
        ['Class'] = 'mover',
        ['NodeType'] = 'MoverTo',
        ['Template'] = 'MoverTo',
        ['Link'] = '$$default_units.spell.肉勾.MoverTo_1',
        ['user_data'] = user_data['$$default_units.spell.肉勾'],
        ['event'] = event_register
    },
    ['Particle_1'] = {
        ['Asset'] = 'effect/SampleSpells/Hook/Hook_Hit/particle.effect',
        ['AutoScaleBaseRadius'] = 128,
        ['Name'] = '粒子节点_1',
        ['Scale'] = 1,
        ['ID'] = 'Particle_1',
        ['Class'] = 'particle',
        ['NodeType'] = 'Particle',
        ['Template'] = 'Particle',
        ['Link'] = '$$default_units.spell.肉勾.Particle_1',
        ['user_data'] = user_data['$$default_units.spell.肉勾'],
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
            [1] = '$$default_units.spell.肉勾.UnitApplyMover_1',
            [2] = '$$default_units.spell.肉勾.LaunchMissile_1_1',
            [3] = '$$default_units.spell.肉勾.Damage_1',
            [4] = '$$default_units.spell.肉勾.UnitRemove_1_1',
        },
        ['MaxCount'] = -1,
        ['MinCount'] = -1,
        ['Name'] = '集合效果节点_1',
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
        ['Link'] = '$$default_units.spell.肉勾.Set_1',
        ['user_data'] = user_data['$$default_units.spell.肉勾'],
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
            [1] = '$$default_units.spell.肉勾.LaunchMissile_1_1_1',
            [2] = '$$default_units.spell.肉勾.UnitRemove_1',
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
        ['Link'] = '$$default_units.spell.肉勾.Set_2',
        ['user_data'] = user_data['$$default_units.spell.肉勾'],
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
        ['Mover'] = '$$default_units.spell.肉勾.MoverTo_1',
        ['MoverTarget'] = {
            ['Effect'] = '',
            ['LocalVar'] = 'A',
            ['Value'] = 'Caster',
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
        ['Link'] = '$$default_units.spell.肉勾.UnitApplyMover_1',
        ['user_data'] = user_data['$$default_units.spell.肉勾'],
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
        ['Effect'] = 'effect/samplespells/hook/hook_missile/particle.effect',
        ['Filter'] = {
            [1] = '弹道',
        },
        ['Icon'] = '',
        ['Inventorys'] = {
        },
        ['ModelData'] = '',
        ['ModelScaleFactor'] = 1,
        ['Name'] = '[3]投射物单位模版',
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
            ['KillOnDeactivate'] = 1,
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
        ['Link'] = '$$default_units.spell.肉勾.UnitMissile_1',
        ['user_data'] = user_data['$$default_units.spell.肉勾'],
        ['event'] = event_register
    },
    ['UnitMissile_1_1'] = {
        ['ActorArray'] = nil,
        ['AnimMapping'] = {
        },
        ['AttackableRadius'] = 60,
        ['Attribute'] = {},
        ['CustomUnitData'] = {
        },
        ['DefaultAI'] = '',
        ['Description'] = '',
        ['Effect'] = 'effect/samplespells/hook/hook_missile/particle.effect',
        ['Filter'] = {
            [1] = '弹道',
        },
        ['Icon'] = '',
        ['Inventorys'] = {
        },
        ['ModelData'] = '',
        ['ModelScaleFactor'] = 1,
        ['Name'] = '[3]投射物单位模版',
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
            ['KillOnDeactivate'] = 1,
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
        ['ID'] = 'UnitMissile_1_1',
        ['Class'] = 'unit',
        ['NodeType'] = 'Unit',
        ['Template'] = 'Unit',
        ['Link'] = '$$default_units.spell.肉勾.UnitMissile_1_1',
        ['user_data'] = user_data['$$default_units.spell.肉勾'],
        ['event'] = event_register
    },
    ['UnitMissile_1_2'] = {
        ['ActorArray'] = nil,
        ['AnimMapping'] = {
        },
        ['AttackableRadius'] = 60,
        ['Attribute'] = {},
        ['CustomUnitData'] = {
        },
        ['DefaultAI'] = '',
        ['Description'] = '',
        ['Effect'] = 'effect/samplespells/hook/hook_missile/particle.effect',
        ['Filter'] = {
            [1] = '弹道',
        },
        ['Icon'] = '',
        ['Inventorys'] = {
        },
        ['ModelData'] = '',
        ['ModelScaleFactor'] = 1,
        ['Name'] = '[3]投射物单位模版',
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
            ['KillOnDeactivate'] = 1,
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
        ['ID'] = 'UnitMissile_1_2',
        ['Class'] = 'unit',
        ['NodeType'] = 'Unit',
        ['Template'] = 'Unit',
        ['Link'] = '$$default_units.spell.肉勾.UnitMissile_1_2',
        ['user_data'] = user_data['$$default_units.spell.肉勾'],
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
            ['Effect'] = '$$default_units.spell.肉勾.LaunchMissile_1',
            ['LocalVar'] = 'A',
            ['Value'] = 'IntermediateUnit',
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
        ['Link'] = '$$default_units.spell.肉勾.UnitRemove_1',
        ['user_data'] = user_data['$$default_units.spell.肉勾'],
        ['event'] = event_register
    },
    ['UnitRemove_1_1'] = {
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
            ['Effect'] = '$$default_units.spell.肉勾.LaunchMissile_1',
            ['LocalVar'] = 'A',
            ['Value'] = 'IntermediateUnit',
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
        ['ID'] = 'UnitRemove_1_1',
        ['Class'] = 'effect',
        ['NodeType'] = 'EffectUnitRemove',
        ['Template'] = 'EffectUnitRemove',
        ['Link'] = '$$default_units.spell.肉勾.UnitRemove_1_1',
        ['user_data'] = user_data['$$default_units.spell.肉勾'],
        ['event'] = event_register
    },
    ['root'] = {
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
            [1] = 'human/barehanded_anim/hand_05/skill_01.ani',
        },
        ['EditorCategory'] = {
            [1] = 'Damage',
            [2] = 'Control',
        },
        ['Effect'] = '$$default_units.spell.肉勾.LaunchMissile_1',
        ['LevelUpEffect'] = '',
        ['Name'] = '肉勾',
        ['Responses'] = {
        },
        ['SimpleText'] = '\r\n\r\n\r\n\r\n肉勾距离：<node-value node="root" field = "Game.range"/>\r\n肉勾宽度：<node-value node="root" field = "Game.SpellData.rectangle_width"/>\r\n冷却时间：<node-value node="root" field = "Game.cool"/>\r\n肉勾一段伤害：<node-value node="Damage_1" field = "Game.Amount"/>\r\n肉勾二段伤害：<node-value node="Damage_2" field = "Game.Amount"/>',
        ['SimpleVideo'] = nil,
        ['SimpleVideoPreview'] = nil,
        ['SpellAnim'] = {
            ['Animation'] = 'human/barehanded_anim/hand_05/skill_01.ani',
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
            ['Description'] = '向指定方向丢出一个钩子，接触到第一个“可移动”的敌方地面单位后收回，该单位会和钩子一起被位移施法者面前，并造成大量伤害。',
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
            ['rectangle_width'] = 100,
            ['show_stack'] = 0,
            ['target_type'] = 0,
        },
        ['StartEffect'] = '',
        ['TargetUnitFilter'] = '敌方,可见,单位;无敌,魔免,死亡',
        ['TargetUnitRange'] = 640,
        ['TargetUnitSorts'] = {
            [1] = '$$default_units.func_ref.优先施法者正前方120度内的单位.root',
            [2] = '$$default_units.func_ref.nearest_unit_to_caster.root',
        },
        ['Time'] = {
            ['cast_channel_time'] = 0,
            ['cast_finish_time'] = 0.75793933868408,
            ['cast_shot_time'] = 0.13719126582146,
            ['cast_start_time'] = 0.30486944317818,
        },
        ['attack_speed_affect_cooldown'] = 0,
        ['attack_speed_attribute'] = '',
        ['cast_type'] = 0,
        ['cool'] = 15,
        ['cost'] = 0,
        ['distance'] = 640,
        ['range'] = 640,
        ['skill_type'] = 0,
        ['target_type'] = 4,
        ['turn_imm_before_cast'] = false,
        ['ID'] = 'root',
        ['Class'] = 'spell',
        ['NodeType'] = 'SpellRoot',
        ['Template'] = 'SpellRoot',
        ['Link'] = '$$default_units.spell.肉勾.root',
        ['user_data'] = user_data['$$default_units.spell.肉勾'],
        ['event'] = event_register
    },
}

return mt