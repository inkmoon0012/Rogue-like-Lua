-- ========================================================================
-- 【记录配置文件($$_s_finger)】
-- 说明：物品分类所属的全部记录，除下面列出的记录外，响应记录树中还可以包含公共记录的根记录记录(common.xxx.xxx)。响应记录树所属记录只可以继承来自记录模板的记录记录（template.xxx）。特殊标记：1、#NIL代表强制赋值为nil，无视继承值。
-- ========================================================================

local user_data = require 'obj.effect.user_data'
local event_register = base.event_register
local mt = {
    ['root'] = {
        ['Name'] = '手指',
        ['ID'] = 'root',
        ['Class'] = 'item_class',
        ['NodeType'] = 'ItemClass',
        ['Template'] = 'ItemClass',
        ['Link'] = '$$.item_class.s_finger.root',
        ['user_data'] = user_data['$$.item_class.s_finger'],
        ['event'] = event_register
    },
}

return mt