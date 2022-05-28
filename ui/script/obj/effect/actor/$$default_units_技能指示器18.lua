-- ========================================================================
-- 【记录配置文件($$default_units_技能指示器18)】
-- 说明：表现所属的全部记录，除下面列出的记录外，响应记录树中还可以包含公共记录的根记录记录(common.xxx.xxx)。响应记录树所属记录只可以继承来自记录模板的记录记录（template.xxx）。特殊标记：1、#NIL代表强制赋值为nil，无视继承值。
-- ========================================================================

local user_data = require 'obj.effect.user_data'
local event_register = base.event_register
local mt = {
    ['Particle_1'] = {
        ['Asset'] = 'effect/eff_battle/particle/Zhishi/Shanxing/PS_Shanxing_120_1/particle.effect',
        ['AutoScaleBaseRadius'] = 128,
        ['Name'] = '粒子节点',
        ['Scale'] = 1,
        ['ID'] = 'Particle_1',
        ['Class'] = 'particle',
        ['NodeType'] = 'Particle',
        ['Template'] = 'Particle',
        ['Link'] = '$$default_units.actor.技能指示器18.Particle_1',
        ['user_data'] = user_data['$$default_units.actor.技能指示器18'],
        ['event'] = event_register
    },
    ['root'] = {
        ['AutoScale'] = false,
        ['CreationFilter'] = {
            ['Ally'] = true,
            ['Enemy'] = true,
            ['Self'] = true,
        },
        ['Effect'] = '$$default_units.actor.技能指示器18.Particle_1',
        ['EventCreation'] = 'on_cast_start',
        ['EventCreationModel'] = '',
        ['EventDestruction'] = 'on_cast_stop',
        ['EventDestructionModel'] = 'Death',
        ['FollowRotation'] = 1,
        ['KillOnDeactivate'] = 0,
        ['KillOnFinish'] = 1,
        ['Name'] = '技能指示器18',
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
        ['ID'] = 'root',
        ['Class'] = 'actor',
        ['NodeType'] = 'ActorEffect',
        ['Template'] = 'ActorEffect',
        ['Link'] = '$$default_units.actor.技能指示器18.root',
        ['user_data'] = user_data['$$default_units.actor.技能指示器18'],
        ['event'] = event_register
    },
}

return mt