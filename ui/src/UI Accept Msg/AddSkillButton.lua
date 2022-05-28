local button = base.ui.button {
    layout = {
        width = 100,
        height = 100,
        col_self = 'start',
        relative = {700, 400}
    },
    show = true,
    font = {size = 22, color = 'e0bad', bold = 2},
    image = 'image/弹窗.png',
    text = 'Level Up',
    bind = {
        event = {on_click = 'ClickButton'},
        show = 'showButton',
        text = 'text'
    } -- 绑定1.事件，2.show
}

local ui, bind = base.ui.create(button)

bind.text = "LevelUp"

base.proto.LevelUp = -- UI接收服务器消息，接收LevelUp消息
function(table)
    bind.showButton = true
    --    bind.text = table[1]

end

bind.ClickButton = function() -- 点击事件
    print('Clicked!')
    local function get_random_list(n) --  从N个秘籍中随机选择3个
        local t1 = {}
        local t2 = {}
        for i = 1, n do table.insert(t1, i) end
        for i = 1, 3 do -- 进行三次循环
            local r = math.random(i, n)
            table.insert(t2, r)
            t2[i] = t1[r] -- 赋值
            t1[r] = t1[i] -- 覆盖避免重复
        end
        return t2 -- 返回表
    end

    local random_list = get_random_list(9)
    local random_id_1 = random_list[1] + 100
    local random_id_2 = random_list[2] + 100
    local random_id_3 = random_list[3] + 100 -- 三个取得的随机值加100，使之等于技能表ID

    print(random_id_1 .. random_id_2 .. random_id_3)

    local player = base.player(1)
    local hero = player:get_hero()
    local hero_name = hero:get_name()

    if hero_name == '$$.unit.hero001.root' then
        Selection001Info = MageSkillTable[random_id_1] -- 法师，存储随机技能信息 全局变量 
        Selection002Info = MageSkillTable[random_id_2]
        Selection003Info = MageSkillTable[random_id_3]
    end

    if hero_name == "$$.unit.hero002.root" then -- 战士
        local random_id_1 = random_id_1 + 100
        local random_id_2 = random_id_2 + 100
        local random_id_3 = random_id_3 + 100
        Selection001Info = WarriorSkillTable[random_id_1]
        Selection002Info = WarriorSkillTable[random_id_2]
        Selection003Info = WarriorSkillTable[random_id_3]
    end


    bind_Selection001.text = Selection001Info["name"] -- 赋值选项1名字
    bind_Selection001.level = ("等级" .. (Selection001Info["level"] + 1)) -- 赋值选项1等级
    bind_Selection001.description1 = Selection001Info["description1"]
    bind_Selection001.description2 = Selection001Info["description2"]

    bind_Selection002.text = Selection002Info["name"]
    bind_Selection002.level = ("等级" .. (Selection002Info["level"] + 1))
    bind_Selection002.description1 = Selection002Info["description1"]
    bind_Selection002.description2 = Selection002Info["description2"]

    bind_Selection003.text = Selection003Info["name"]
    bind_Selection003.level = ("等级" .. (Selection003Info["level"] + 1))
    bind_Selection003.description1 = Selection003Info["description1"]
    bind_Selection003.description2 = Selection003Info["description2"]

    --   local randomNum = math.random(3)
    --     local switchTable = {
    --         [1] = function()
    --             bind_Selection001.text = (MageSkillTable[101]['name'])
    --             bind_Selection002.text = (MageSkillTable[102]['name'])
    --             bind_Selection003.text = (MageSkillTable[000]['name'])
    --         end,
    --         [2] = function()
    --             bind_Selection001.text = (MageSkillTable[102]['name'])
    --             bind_Selection002.text = (MageSkillTable[101]['name'])
    --             bind_Selection003.text = (MageSkillTable[000]['name'])
    --         end,
    --         [3] = function()
    --             bind_Selection001.text = (MageSkillTable[000]['name'])
    --             bind_Selection002.text = (MageSkillTable[102]['name'])
    --             bind_Selection003.text = (MageSkillTable[101]['name'])
    --         end
    --     }

    --     local switchFunc = switchTable[randomNum]
    --     switchFunc()

    -- bind_Selection001.text = (MageSkillTable[101]['name']) -- 技能描述

    bind.showButton = false
    bind_Selection001.showLabel = true
    bind_Selection002.showLabel = true
    bind_Selection003.showLabel = true

end
