-- ========================================================================
-- 【记录配置文件($$default_units_audio_bgm_10013)】
-- 说明：表现所属的全部记录，除下面列出的记录外，响应记录树中还可以包含公共记录的根记录记录(common.xxx.xxx)。响应记录树所属记录只可以继承来自记录模板的记录记录（template.xxx）。特殊标记：1、#NIL代表强制赋值为nil，无视继承值。
-- ========================================================================

local user_data = require 'obj.effect.user_data'
local event_register = base.event_register
local mt = {
    ['SoundMusic_1'] = {
        ['Asset'] = 'sound/battle_party_sound/bgm/mus_bp_wasteland.ogg',
        ['Category'] = 'Music',
        ['Events'] = {
        },
        ['FadeTime'] = 2,
        ['Name'] = '音乐节点_1',
        ['Volume'] = 1.0,
        ['ID'] = 'SoundMusic_1',
        ['Class'] = 'sound',
        ['NodeType'] = 'Sound',
        ['Template'] = 'Sound',
        ['Link'] = '$$default_units.actor.audio_bgm_10013.SoundMusic_1',
        ['user_data'] = user_data['$$default_units.actor.audio_bgm_10013'],
        ['event'] = event_register
    },
    ['root'] = {
        ['CreationFilter'] = {
            ['Ally'] = true,
            ['Enemy'] = true,
            ['Self'] = true,
        },
        ['EventCreation'] = 'on_cast_start',
        ['EventCreationModel'] = '',
        ['EventDestruction'] = 'on_cast_stop',
        ['EventDestructionModel'] = 'Death',
        ['FarDistance'] = 5000,
        ['FollowRotation'] = 1,
        ['KillOnFinish'] = 1,
        ['LoopCount'] = -1,
        ['MaxAudibleCount'] = 10,
        ['MaxInstanceCount'] = 16,
        ['Name'] = 'audio_bgm_10013',
        ['Offset'] = {
            ['X'] = 0,
            ['Y'] = 0,
            ['Z'] = 0,
        },
        ['RandomPlay'] = 1,
        ['RolloffFactor'] = 4,
        ['Rotation'] = {
            ['X'] = 0,
            ['Y'] = 0,
            ['Z'] = 0,
        },
        ['SocketName'] = '',
        ['Sound'] = {
            [1] = {
                ['Sound'] = '$$default_units.actor.audio_bgm_10013.SoundMusic_1',
                ['Weight'] = 1,
            },
        },
        ['UISound'] = 1,
        ['sync'] = true,
        ['ID'] = 'root',
        ['Class'] = 'actor',
        ['NodeType'] = 'ActorSound',
        ['Template'] = 'ActorSound',
        ['Link'] = '$$default_units.actor.audio_bgm_10013.root',
        ['user_data'] = user_data['$$default_units.actor.audio_bgm_10013'],
        ['event'] = event_register
    },
}

return mt