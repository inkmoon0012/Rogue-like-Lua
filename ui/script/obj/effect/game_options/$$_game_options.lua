-- ========================================================================
-- 【记录配置文件($$_game_options)】
-- 说明：游戏配数据。只有一个记录数据，ID为GameOptions
-- ========================================================================

local user_data = require 'obj.effect.user_data'
local event_register = base.event_register
local mt = {
    ['GameOptions'] = {
        ['GameOption'] = {
            ['Data'] = {
                ['particle_lod_level'] = nil,
                ['background_music_sound'] = nil,
                ['background_music_sound_bool'] = nil,
                ['effect_sound'] = nil,
                ['effect_sound_bool'] = nil,
                ['max_fps'] = nil,
            },
            ['UI'] = {
            },
        },
        ['Name'] = '默认游戏配置',
        ['ID'] = 'GameOptions',
        ['Class'] = 'game_options',
        ['NodeType'] = 'GameOptions',
        ['Template'] = 'GameOptions',
        ['Link'] = '$$.game_options.game_options.GameOptions',
        ['user_data'] = user_data['$$.game_options.game_options'],
        ['event'] = event_register
    },
}

return mt