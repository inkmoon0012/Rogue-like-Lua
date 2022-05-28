-- ========================================================================
-- 【记录配置文件($$_test_close)】
-- 说明：物品所属的全部记录，除下面列出的记录外，响应记录树中还可以包含公共记录的根记录记录(common.xxx.xxx)。响应记录树所属记录只可以继承来自记录模板的记录记录（template.xxx）。特殊标记：1、#NIL代表强制赋值为nil，无视继承值。
-- ========================================================================

local user_data = require 'obj.effect.user_data'
local event_register = base.event_register
local mt = {
    ['Buff_1'] = {
        ['ActorArray'] = nil,
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
                return -1
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
            [1] = {
                ['Key'] = '生命',
                ['Percentage'] = false,
                ['Random'] = nil,
                ['Value'] = (function ()
                    local func = function (ref_param)
                        return 100
                    end
                    return func
                end)(),
            },
        },
        ['KillBuffEffect'] = 1,
        ['ModelTransparent'] = 0,
        ['Name'] = 'Buff节点',
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
            [1] = '$$.item.test_close.ResponseDamageDefender_1',
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
        ['Link'] = '$$.item.test_close.Buff_1',
        ['user_data'] = user_data['$$.item.test_close'],
        ['event'] = event_register
    },
    ['ResponseDamageDefender_1'] = {
        ['Chance'] = (function ()
            local func = function (ref_param)
                return 0.5
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
            local func = function (ref_param)
                return 0
            end
            return func
        end)(),
        ['Name'] = '受到伤害响应节点',
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
        ['Link'] = '$$.item.test_close.ResponseDamageDefender_1',
        ['user_data'] = user_data['$$.item.test_close'],
        ['event'] = event_register
    },
    ['UnitItem_1'] = {
        ['ActorArray'] = nil,
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
            ['攻击'] = nil,
            ['攻击范围'] = nil,
            ['攻击速度'] = nil,
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
            ['急速'] = nil,
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
            ['生命'] = nil,
            ['生命恢复'] = nil,
            ['生命上限'] = nil,
            ['神力秘籍'] = nil,
            ['嗜血秘籍'] = nil,
            ['视野范围'] = nil,
            ['守护光环等级'] = nil,
            ['撕裂秘籍'] = nil,
            ['搜敌范围'] = nil,
            ['碎冰秘籍'] = nil,
            ['碎魂秘籍'] = nil,
            ['武力压制天赋等级'] = nil,
            ['吸血'] = nil,
            ['旋风斩等级'] = nil,
            ['雪崩秘籍'] = nil,
            ['炎帝等级'] = nil,
            ['移动速度'] = 0,
            ['月光斩天赋等级'] = nil,
            ['月刃秘籍'] = nil,
            ['召唤火焰卫士等级'] = nil,
            ['召唤水元素等级'] = nil,
            ['炙烤秘籍'] = nil,
            ['致命打击天赋等级'] = nil,
            ['致死秘籍'] = nil,
            ['转身速度'] = 0,
            ['灼烧等级'] = nil,
            ['逐日剑法天赋等级'] = nil,
            ['逐日斩等级'] = nil,
            ['逐日震荡秘籍'] = nil,
            ['最大转身速度'] = nil,
            ['最小转身速度'] = nil,
        },
        ['CustomUnitData'] = {
        },
        ['DefaultAI'] = '',
        ['Description'] = '',
        ['Effect'] = '',
        ['Filter'] = {
            [1] = '物品',
        },
        ['Icon'] = '',
        ['Inventorys'] = {
        },
        ['ModelData'] = '',
        ['ModelScaleFactor'] = 1,
        ['Name'] = '[5]物品单位模版',
        ['PackageInfo'] = 'deco/handpaintedvol2_campsite/sm_backpack_01_base/model.prefab',
        ['PlanerShadow'] = true,
        ['Responses'] = {
        },
        ['Restrictions'] = {
            [1] = '无敌',
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
            ['Effect'] = '',
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
            ['PackageInfo'] = 'deco/handpaintedvol2_campsite/sm_backpack_01_base/model.prefab',
            ['ResourcePackageList'] = '',
            ['ResourceType'] = '魔法',
            ['Restriction'] = {
            },
            ['SelectedRadius'] = 60,
            ['ShowBlood'] = 1,
            ['Sync'] = 'self|sight',
            ['TurnSpeed'] = 600,
            ['UnitClass'] = '生物',
            ['UnitTag'] = '物品',
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
        ['ID'] = 'UnitItem_1',
        ['Class'] = 'unit',
        ['NodeType'] = 'Unit',
        ['Template'] = 'Unit',
        ['Link'] = '$$.item.test_close.UnitItem_1',
        ['user_data'] = user_data['$$.item.test_close'],
        ['event'] = event_register
    },
    ['root'] = {
        ['CarryMod'] = {
            ['Actor'] = '',
            ['Buffs'] = {
            },
            ['Skill'] = '',
            ['Validator'] = (function ()
                                --- lua_plus ---
                --- skip_undefined ---
                local function func(效果节点)
                    local result = 0
                    return result
                end
                return func
            end)(),
        },
        ['Classes'] = {
            [1] = '$$.item_class.s_chest.root',
            [2] = '$$.item_class.e_clost.root',
        },
        ['Description'] = '50%几率使受到的物理伤害变为0',
        ['EquipMod'] = {
            ['Actor'] = '',
            ['Buffs'] = {
                [1] = '$$.item.test_close.Buff_1',
            },
            ['Skill'] = '',
            ['Validator'] = (function ()
                                --- lua_plus ---
                --- skip_undefined ---
                local function func(效果节点)
                    local result = 0
                    return result
                end
                return func
            end)(),
        },
        ['Icon'] = '',
        ['KillOnDepleted'] = true,
        ['Name'] = '减伤衣',
        ['StackMax'] = 0,
        ['StackStart'] = 1,
        ['Unit'] = '$$.item.test_close.UnitItem_1',
        ['ID'] = 'root',
        ['Class'] = 'item',
        ['NodeType'] = 'ItemAbil',
        ['Template'] = 'ItemAbil',
        ['Link'] = '$$.item.test_close.root',
        ['user_data'] = user_data['$$.item.test_close'],
        ['event'] = event_register
    },
}

return mt