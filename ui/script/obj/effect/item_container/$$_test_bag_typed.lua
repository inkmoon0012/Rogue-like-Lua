-- ========================================================================
-- 【记录配置文件($$_test_bag_typed)】
-- 说明：物品背包所属的全部记录，除下面列出的记录外，响应记录树中还可以包含公共记录的根记录记录(common.xxx.xxx)。响应记录树所属记录只可以继承来自记录模板的记录记录（template.xxx）。特殊标记：1、#NIL代表强制赋值为nil，无视继承值。
-- ========================================================================

local user_data = require 'obj.effect.user_data'
local event_register = base.event_register
local mt = {
    ['root'] = {
        ['Name'] = '材料包',
        ['Slots'] = {
            [1] = {
                ['Equip'] = false,
                ['Excluded'] = {
                },
                ['GrantTag'] = nil,
                ['Icon'] = '',
                ['Required'] = {
                    [1] = '$$.item_class.c_material.root',
                },
                ['Socket'] = '',
            },
            [2] = {
                ['Equip'] = false,
                ['Excluded'] = {
                },
                ['GrantTag'] = nil,
                ['Icon'] = '',
                ['Required'] = {
                    [1] = '$$.item_class.c_material.root',
                },
                ['Socket'] = '',
            },
            [3] = {
                ['Equip'] = false,
                ['Excluded'] = {
                },
                ['GrantTag'] = nil,
                ['Icon'] = '',
                ['Required'] = {
                    [1] = '$$.item_class.c_material.root',
                },
                ['Socket'] = '',
            },
            [4] = {
                ['Equip'] = false,
                ['Excluded'] = {
                },
                ['GrantTag'] = nil,
                ['Icon'] = '',
                ['Required'] = {
                    [1] = '$$.item_class.c_material.root',
                },
                ['Socket'] = '',
            },
            [5] = {
                ['Equip'] = false,
                ['Excluded'] = {
                },
                ['GrantTag'] = nil,
                ['Icon'] = '',
                ['Required'] = {
                    [1] = '$$.item_class.c_material.root',
                },
                ['Socket'] = '',
            },
        },
        ['ID'] = 'root',
        ['Class'] = 'item_container',
        ['NodeType'] = 'ItemContainer',
        ['Template'] = 'ItemContainer',
        ['Link'] = '$$.item_container.test_bag_typed.root',
        ['user_data'] = user_data['$$.item_container.test_bag_typed'],
        ['event'] = event_register
    },
}

return mt