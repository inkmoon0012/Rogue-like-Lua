-- ========================================================================
-- 【记录配置文件($$lib_upgrade_配置)】
-- 说明：游戏机制所属的全部记录，除下面列出的记录外，响应记录树中还可以包含公共记录的根记录记录(common.xxx.xxx)。响应记录树所属记录只可以继承来自记录模板的记录记录（template.xxx）。特殊标记：1、#NIL代表强制赋值为nil，无视继承值。
-- ========================================================================

local user_data = require 'obj.effect.user_data'
local event_register = base.event_register
local mt = {
    ['root'] = {
        ['Description'] = nil,
        ['LevelTemplate'] = nil,
        ['Name'] = '配置',
        ['Tag'] = {
            [1] = '无',
        },
        ['Text'] = '升级经验表<node-value node="$$.link_node.经验表.root" field="Game.Array"/>',
        ['ID'] = 'root',
        ['Class'] = 'game_mechanics',
        ['NodeType'] = 'GameMechanics',
        ['Template'] = 'GameMechanics',
        ['Link'] = '$$lib_upgrade.game_mechanics.配置.root',
        ['user_data'] = user_data['$$lib_upgrade.game_mechanics.配置'],
        ['event'] = event_register
    },
}

return mt