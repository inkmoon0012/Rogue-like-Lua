--- lua_plus ---
--- skip_undefined ---
print伤害来源:trigger = base.trigger_new(coroutine.will_async(function(当前触发器:trigger, e:trigger_args)
    if  then
        log.debug(tostring(e.unit) .. '|' .. tostring(e.amount) .. '|' .. tostring(e.damage_source))
    end
end), {
    base.trigger_event_wrapper_unit(base.eff.cache_unit(unit_id["$$default_units.unit.狼人.root"]), 单位事件["受到伤害"])
}, true, nil)