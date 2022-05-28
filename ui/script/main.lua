---require_common---
require"@common.base"
do
    local res, page = xpcall(require, function(err) print(string.format("调用失败：%s", err)) end, "gui.page")
    if res and page then
        local MainPage = page.MainPage
        if MainPage then
            local main_page = MainPage:new()
            _ENV.page_components = page
            _ENV.main_page = main_page
        end
    end
end

---init data object cache---
if base.eff.has_cache_init() then
else
	base.eff.init_cache(require "obj.effect")
end
base.new_struct_creater = {}
function base.proto.__server_custom_event_struct_creater(msg)
    if msg.struct_name and base.new_struct_creater then
        base.new_struct_creater[msg.struct_name] = function()
            return msg.struct
        end
    end
end
function _send_custom_event_struct_creater(param_name, param_struct)
    base.game:server'__client_custom_event_struct_creater'{
        struct_name = param_name,
        struct = param_struct,
    }
end
lib_control = require"@lib_control.main"
defaultui = require"@defaultui.main"
lib_plotdialogue = require"@lib_plotdialogue.main"
lib_region = require"@lib_region.main"
lib_common_ai = require"@lib_common_ai.main"
lib_upgrade = require"@lib_upgrade.main"
---origin_main_file---

---auto_require---
local argv = include "@common.base.argv"

log.info("map_kind", argv.get("map_kind"), type(argv.get("map_kind")))
if tonumber(argv.get("map_kind")) ~= 2 then
	xpcall(require, function(err) print(string.format("调用失败：%s", err)) end, "UI信息表.AbilityTable")
xpcall(require, function(err) print(string.format("调用失败：%s", err)) end, "UI信息表.main")
xpcall(require, function(err) print(string.format("调用失败：%s", err)) end, "UI信息表.SkillTable")
xpcall(require, function(err) print(string.format("调用失败：%s", err)) end, "UI信息表.TalentTable")
xpcall(require, function(err) print(string.format("调用失败：%s", err)) end, "UI信息表.欢迎")
xpcall(require, function(err) print(string.format("调用失败：%s", err)) end, "UI发送消息.AbilitySelections")
xpcall(require, function(err) print(string.format("调用失败：%s", err)) end, "UI发送消息.SkillSelections")
xpcall(require, function(err) print(string.format("调用失败：%s", err)) end, "UI发送消息.TalentTree")
xpcall(require, function(err) print(string.format("调用失败：%s", err)) end, "UI接收消息.AddAbilityButton")
xpcall(require, function(err) print(string.format("调用失败：%s", err)) end, "UI接收消息.AddSkillButton")
xpcall(require, function(err) print(string.format("调用失败：%s", err)) end, "UI接收消息.ShowTalentButton")
else
	
end