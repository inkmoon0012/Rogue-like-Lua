--- lua_plus ---
--- skip_undefined ---
关闭兵线:trigger = base.trigger_new(coroutine.will_async(function(当前触发器:trigger, e:trigger_args)
    if  then
        base.trigger_disable(刷兵1)
    end
end), {
    base.trigger_event_wrapper_timer_once(30)
}, false, nil)