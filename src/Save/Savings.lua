local player = base.player(1)
map_score_souls = 0
talent_tree = {}

local function setServerMainData(score, iscore, sscore)
    map_score_souls = iscore['map_score']
    talent_tree = score['talent_tree']

    local all_good = false
    if talent_tree then
        all_good = talent_tree.talent10001 and talent_tree.talent10002 and
                       talent_tree.talent10003 and talent_tree.talent10004 and
                       talent_tree.talent10005 and talent_tree.talent10006 and
                       talent_tree.talent10007
    end

    if not map_score_souls then
        -- 初始化击杀积分
        local c = base.s.get_commit()
        c.score_seti(player, 'map_score', 0)
        c.commit('初始化地图积分')
        map_score_souls = iscore['map_score']
        print('score inited')
    end

    if not all_good then -- 初始化天赋
        talent_tree = {
            talent10001 = 0,
            talent10002 = 0,
            talent10003 = 0,
            talent10004 = 0,
            talent10005 = 0,
            talent10006 = 0,
            talent10007 = 0,
            talent20001 = 0,
            talent20002 = 0,
            talent20003 = 0,
            talent20004 = 0,
            talent20005 = 0,
            talent20006 = 0,
            talent20007 = 0
        }
        local c = base.s.get_commit()
        c.score_set(player, 'talent_tree', talent_tree)
        c.commit('初始化天赋')
        print('talent_tree inited')
    else
        local hero = player:get_hero()
        local hero_name = hero:get_name()
        if hero_name == '$$.unit.hero001.root' then -- 法师
            hero:set('火焰亲和天赋等级', talent_tree.talent10001)
            hero:set('不屈意志天赋等级', talent_tree.talent10002)
            hero:set('冰冷之心天赋等级', talent_tree.talent10003)
            hero:set('强化火球术天赋等级', talent_tree.talent10004)
            hero:set('强化灼烧天赋等级', talent_tree.talent10005)
            hero:set('寒冰增效天赋等级', talent_tree.talent10006)
            hero:set('强化寒冰箭天赋等级', talent_tree.talent10007)
            print('火焰亲和天赋等级 is' .. talent_tree.talent10001)
        end

        if hero_name == '$$.unit.hero002.root' then -- 战士
            hero:set('武力压制天赋等级', talent_tree.talent20001)
            hero:set('不灭之躯天赋等级', talent_tree.talent20002)
            hero:set('冲动天赋等级', talent_tree.talent20003)
            hero:set('动脉打击天赋等级', talent_tree.talent20004)
            hero:set('月光斩天赋等级', talent_tree.talent20005)
            hero:set('逐日剑法天赋等级', talent_tree.talent20006)
            hero:set('致命打击天赋等级', talent_tree.talent20007)
            print('武力压制天赋等级 is' .. talent_tree.talent20001)
        end

    end

    player:ui 'update_souls' {souls = map_score_souls} -- 给UI发消息更新灵魂积分    TalentTree.lua
    player:ui 'update_talent_tree' {talent_tree = talent_tree} -- 给UI发消息更新天赋树      TalentTree.lua
    print(' map_score_souls now is ' .. map_score_souls)
    --    print(' talent10001 now is ' .. talent10001)
end

function init_map_score(player)
    base.s.score_init('RPG001_rmca', player, {
        ok = function(score, iscore, sscore)
            setServerMainData(score, iscore, sscore)
        end,
        error = function(err) print('error', err) end,
        timeout = function() print('timeout') end
    })
end

init_map_score(player)

