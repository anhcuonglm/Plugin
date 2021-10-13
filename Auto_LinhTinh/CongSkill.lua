local self = nCongSkill

local nCongSkill = Map.nCongSkill or {}
Map.nCongSkill = nCongSkill
me.Msg("test test nCongSkill")

function nCongSkill:TestCongSkill()
    me.Msg("TestCongSkill")
end

function nCongSkill:MaNhan() -- LV 100
    if UiManager:WindowVisible(Ui.UI_FIGHTSKILL) ~= 1 then
        UiManager:SwitchWindow(Ui.UI_FIGHTSKILL) 
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnKombatPage2") -- chon Bang skill

            --skill 1x
            for i = 1, 20 do -- +skill 1x 20lan
                Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_1") -- cong skill
            end

            --skill 2x
            for i = 1, 10 do -- +Skill 2x 10lan
                Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_2") -- dong 1, cot 2
            end

            --skill 3x
            --Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_1") -- dong 2, cot 1

            --Skill 4x
            for i =1, 17 do
                Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_2")
            end

            --skill 5x
            for i = 1, 20 do
                Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")
            end

            --skill 6x
            --Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_2")

            --skill 7x
            --Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")
            
            --skill 8x
            for i= 1,20 do
                Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            end

            --skill 9x
            for i = 1,11 do
                Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            end
            --skill 10x
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_2")
           
            --chap nhan
            local bOK ,szMsg = Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnAccept")
    else
        UiManager:CloseWindow(Ui.UI_FIGHTSKILL)
    end
end

function nCongSkill:CongSkill5DC()
    if UiManager:WindowVisible(Ui.UI_FIGHTSKILL) ~= 1 then
        UiManager:SwitchWindow(Ui.UI_FIGHTSKILL) 
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnKombatPage2") -- chon Bang skill

            --skill 1x
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_1") -- cong skill
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_1")

            --skill 2x
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_2") -- dong 1, cot 2
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_2")

            --skill 3x
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_1") -- dong 2, cot 1
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_1")

            --skill 4x
            --Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_2")

            --skill 5x
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")

            --skill 6x
            --Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_2")

            --skill 7x
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")

            --skill 8x
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")

            --skill 9x
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")

            --skill 10x
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_2")
           
            --chap nhan
            local bOK ,szMsg = Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnAccept")
    else
        UiManager:CloseWindow(Ui.UI_FIGHTSKILL)
    end
end

function nCongSkill:CongSkillTT()
    if UiManager:WindowVisible(Ui.UI_FIGHTSKILL) ~= 1 then
        UiManager:SwitchWindow(Ui.UI_FIGHTSKILL) 
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnKombatPage2") -- chon Bang skill
            --skill 1x
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_1") -- cong skill
            
            --skill 2x
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_1_2")

            --skill 3x
            
            --skill 4x
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_2")

            --skill 5x
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_1")

            --skill 6x
            
            --skill 7x
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_1")

            --skill 8x
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_4_2")

            --skill 9x
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_1")

            --skill 10x
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_2")
            Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_5_2")

            --chap nhan
            local bOK ,szMsg = Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnAccept")
    else
        UiManager:CloseWindow(Ui.UI_FIGHTSKILL)
    end
end