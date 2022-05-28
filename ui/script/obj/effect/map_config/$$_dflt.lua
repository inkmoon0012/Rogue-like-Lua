-- ========================================================================
-- 【记录配置文件($$_dflt)】
-- 说明：地图配置所属的全部记录，除下面列出的记录外，响应记录树中还可以包含公共记录的根记录记录(common.xxx.xxx)。响应记录树所属记录只可以继承来自记录模板的记录记录（template.xxx）。特殊标记：1、#NIL代表强制赋值为nil，无视继承值。
-- ========================================================================

local user_data = require 'obj.effect.user_data'
local event_register = base.event_register
local mt = {
    ['root'] = {
        ['Name'] = '默认设置',
        ['ai_slots'] = {
            [1] = 2,
            [2] = 3,
            [3] = 4,
            [4] = 5,
        },
        ['allow_add_speed'] = 1,
        ['auto_load_scene'] = 1,
        ['generate_control'] = false,
        ['mode'] = 4,
        ['opened_slots'] = {
            [1] = 1,
        },
        ['player_setting'] = {
            [0] = {
                [1] = 'computer',
                [2] = 100,
            },
            [1] = {
                [1] = 'user',
                [2] = 1,
            },
            [2] = {
                [1] = 'user',
                [2] = 1,
            },
            [3] = {
                [1] = 'user',
                [2] = 1,
            },
            [4] = {
                [1] = 'user',
                [2] = 2,
            },
            [5] = {
                [1] = 'user',
                [2] = 2,
            },
            [7] = {
                [1] = 'computer',
                [2] = 3,
            },
            [99] = {
                [1] = 'computer',
                [2] = 3,
            },
        },
        ['response_at_once'] = 0,
        ['time_end'] = 1000,
        ['time_loading'] = 2000,
        ['time_run'] = 9999999,
        ['time_score_init'] = 150,
        ['time_selectfinish'] = 0,
        ['time_selecthero'] = 5000,
        ['user_ids'] = {
            [1] = 100,
        },
        ['ID'] = 'root',
        ['Class'] = 'map_config',
        ['NodeType'] = 'MapConfig',
        ['Template'] = 'MapConfig',
        ['Link'] = '$$.map_config.dflt.root',
        ['user_data'] = user_data['$$.map_config.dflt'],
        ['event'] = event_register
    },
}

return mt