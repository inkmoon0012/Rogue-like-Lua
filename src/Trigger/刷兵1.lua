--- lua_plus ---
--- skip_undefined ---
刷兵1:trigger = base.trigger_new(coroutine.will_async(function(当前触发器:trigger, e:trigger_args)
    if  then
        base.player_create_unit(base.player(7), unit_id["$$.unit.shilaimu.root"], base.get_scene_point("default", "刷怪点1", _G.present), 0)
        base.unit_ai_attack_move_to(base.get_last_created_unit(), base.get_scene_line("default", "敌方兵线1", _G.present))
        base.player_create_unit(base.player(7), unit_id["$$.unit.shilaimu.root"], base.get_scene_point("default", "刷怪点1", _G.present), 0)
        base.unit_ai_attack_move_to(base.get_last_created_unit(), base.get_scene_line("default", "敌方兵线1", _G.present))
    end
end), {
    base.trigger_event_wrapper_timer_periodic(10)
}, false, nil)