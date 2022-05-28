-- ========================================================================
-- 【记录配置文件($$_default_anim_preview)】
-- 说明：模型所属的全部记录，除下面列出的记录外，响应记录树中还可以包含公共记录的根记录记录(common.xxx.xxx)。响应记录树所属记录只可以继承来自记录模板的记录记录（template.xxx）。特殊标记：1、#NIL代表强制赋值为nil，无视继承值。
-- ========================================================================

local user_data = require 'obj.effect.user_data'
local event_register = base.event_register
local mt = {
    ['root'] = {
        ['ActorArray'] = nil,
        ['AnimMapping'] = {
            [1] = {
                ['NameFrom'] = 'Move',
                ['NameTo'] = 'Walk',
            },
            [2] = {
                ['NameFrom'] = 'Spell',
                ['NameTo'] = 'BP_Spellcast01',
            },
            [3] = {
                ['NameFrom'] = 'Dead',
                ['NameTo'] = 'FemaleBody_1_Dead',
            },
            [4] = {
                ['NameFrom'] = 'Idle',
                ['NameTo'] = 'BP_idle',
            },
        },
        ['Asset'] = 'characters/general/sk_basic2/model.prefab',
        ['AutoScaleBaseRadius'] = 128,
        ['BirthStandDeathAnim'] = 'bsd',
        ['Events'] = {
        },
        ['ExtraAnimations'] = {
        },
        ['Name'] = '默认动画预览模型',
        ['Scale'] = 1,
        ['ID'] = 'root',
        ['Class'] = 'model',
        ['NodeType'] = 'Model',
        ['Template'] = 'Model',
        ['Link'] = '$$.model.default_anim_preview.root',
        ['user_data'] = user_data['$$.model.default_anim_preview'],
        ['event'] = event_register
    },
}

return mt