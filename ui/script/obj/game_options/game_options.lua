-- ========================================================================
-- 【GameOptions配置文件】
-- ========================================================================

local mt = {
    ['$$.game_options.game_options.GameOptions'] = {
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
    },
}

return mt