--- lua_plus ---
--- skip_undefined ---
召唤物死亡:trigger = base.trigger_new(coroutine.will_async(function(当前触发器:trigger, e:trigger_args)
    local buff_layers:integer = base.buff_get_stack(base.unit_find_buff(base.player_get_hero(base.player(1)), buff_id["$$.buff.召唤物数量.root"]))
    if  then
        buff_layers = buff_layers - 1
        base.buff_set_stack(base.unit_find_buff(base.player_get_hero(base.player(1)), buff_id["$$.buff.召唤物数量.root"]), buff_layers)
    end
end), {
    base.trigger_event_wrapper_unit(base.eff.cache_unit(unit_id["$$default_units.unit.水元素.root"]), 单位事件["单位-死亡"])
}, false, nil)