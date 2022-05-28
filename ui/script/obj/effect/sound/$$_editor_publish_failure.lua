-- ========================================================================
-- 【记录配置文件($$_editor_publish_failure)】
-- 说明：音效所属的全部记录，除下面列出的记录外，响应记录树中还可以包含公共记录的根记录记录(common.xxx.xxx)。响应记录树所属记录只可以继承来自记录模板的记录记录（template.xxx）。特殊标记：1、#NIL代表强制赋值为nil，无视继承值。
-- ========================================================================

local user_data = require 'obj.effect.user_data'
local event_register = base.event_register
local mt = {
    ['root'] = {
        ['Asset'] = 'sound/promotion_sound/ui/三星结算音效_失败.ogg',
        ['Category'] = 'Music',
        ['Events'] = {
        },
        ['FadeTime'] = 0.5,
        ['Name'] = '发布失败',
        ['Volume'] = 1.0,
        ['ID'] = 'root',
        ['Class'] = 'sound',
        ['NodeType'] = 'Sound',
        ['Template'] = 'Sound',
        ['Link'] = '$$.sound.editor_publish_failure.root',
        ['user_data'] = user_data['$$.sound.editor_publish_failure'],
        ['event'] = event_register
    },
}

return mt