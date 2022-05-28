-- ========================================================================
-- 【记录配置文件($$_camerapro)】
-- 说明：镜头属性所属的全部记录，除下面列出的记录外，响应记录树中还可以包含公共记录的根记录记录(common.xxx.xxx)。响应记录树所属记录只可以继承来自记录模板的记录记录（template.xxx）。特殊标记：1、#NIL代表强制赋值为nil，无视继承值。
-- ========================================================================

local user_data = require 'obj.effect.user_data'
local event_register = base.event_register
local mt = {
    ['root'] = {
        ['CameraMode'] = 0,
        ['CustomCameraProperty'] = {
        },
        ['FOVFor2K'] = 25.0,
        ['Name'] = '默认镜头',
        ['PSCTickDistance'] = -1.0,
        ['UnitTickOpt'] = 1.0,
        ['XBias'] = 0.0,
        ['YBias'] = 0.0,
        ['default_focus_moving_speed'] = 0,
        ['default_rotation'] = {
            ['X'] = -90.0,
            ['Y'] = 0.0,
            ['Z'] = 0.0,
        },
        ['far_clip'] = 100000.0,
        ['filed_of_view'] = 45,
        ['focus_scroll_border'] = 15,
        ['focus_unit_moving_time'] = 0.3,
        ['focus_z'] = 10.0,
        ['init_position'] = {
            ['X'] = 736.33734130859,
            ['Y'] = 1920.9049072266,
        },
        ['max_angle'] = {
            ['X'] = -60,
            ['Y'] = -0.0,
            ['Z'] = 0,
        },
        ['max_distance'] = 1600,
        ['max_focus_moving_speed'] = 4000,
        ['max_focus_position'] = {
            ['X'] = 6500.0,
            ['Y'] = 6500.0,
        },
        ['min_angle'] = {
            ['X'] = -30,
            ['Y'] = -0.0,
            ['Z'] = 0,
        },
        ['min_distance'] = 1000,
        ['min_focus_moving_speed'] = 2000,
        ['min_focus_position'] = {
            ['X'] = 150.0,
            ['Y'] = 150.0,
        },
        ['near_clip'] = 1.0,
        ['position_count'] = 4,
        ['scene_border'] = {
            ['Down'] = 0,
            ['Left'] = 0,
            ['Right'] = 0,
            ['Up'] = 0,
        },
        ['scroll_move_speed'] = 750.0,
        ['scroll_rotate_speed'] = {
            ['X'] = -70.0,
            ['Y'] = 0.0,
            ['Z'] = 0.0,
        },
        ['ID'] = 'root',
        ['Class'] = 'camera_property',
        ['NodeType'] = 'CameraProperty',
        ['Template'] = 'CameraProperty',
        ['Link'] = '$$.camera_property.camerapro.root',
        ['user_data'] = user_data['$$.camera_property.camerapro'],
        ['event'] = event_register
    },
}

return mt