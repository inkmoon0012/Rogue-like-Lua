
local player = base.player(1)

player:event('单位-升级',
             function(trg, unit) -- 升级触发事件，服务器给UI发送消息
    local level = unit:get_level()
    player:ui 'LevelUp' {level} -- 发送LevelUp事件
    print("Hero level is", level)
end)

base.game:event('单位-死亡', function(trg, unit)
    local tag = unit:get_tag()
    print(tag)
    local c = base.s.get_commit()
    c.score_addi(player, 'map_score', 1) -- 给需要添加积分的玩家增加积分
    c.commit('地图积分+1')
    print('score +1')
    if tag == "守卫" then
        player:ui 'EliteKilled' {EliteKilled} -- 发送EliteKilled事件
        print("EliteKilled")
    end
end)
