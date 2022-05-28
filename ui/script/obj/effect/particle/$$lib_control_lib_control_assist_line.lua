-- ========================================================================
-- 【记录配置文件($$lib_control_lib_control_assist_line)】
-- 说明：粒子所属的全部记录，除下面列出的记录外，响应记录树中还可以包含公共记录的根记录记录(common.xxx.xxx)。响应记录树所属记录只可以继承来自记录模板的记录记录（template.xxx）。特殊标记：1、#NIL代表强制赋值为nil，无视继承值。
-- ========================================================================

local user_data = require 'obj.effect.user_data'
local event_register = base.event_register
local mt = {
    ['root'] = {
        ['Asset'] = 'effect/eff_tank/particle/PS_Skill_Effect_001/particle.effect',
        ['AutoScaleBaseRadius'] = 128,
        ['Name'] = 'lib_control_assist_line',
        ['Scale'] = 1,
        ['ID'] = 'root',
        ['Class'] = 'particle',
        ['NodeType'] = 'Particle',
        ['Template'] = 'Particle',
        ['Link'] = '$$lib_control.particle.lib_control_assist_line.root',
        ['user_data'] = user_data['$$lib_control.particle.lib_control_assist_line'],
        ['event'] = event_register
    },
}

return mt