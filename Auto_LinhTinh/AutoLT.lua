local tbAutoLT = Ui:GetClass("AutoLT");
local self=tbAutoLT;
local nDenJi = 5;

--local tbAutoLTBagLayout = Ui.tbLogic.tbExtBagLayout
--tbAutoLTBagLayout.IMAGES = {"\\image\\ui\\001a\\common\\btn_2ch.spr"}
--self.bShow = 1

tbAutoLT.BTN_CLOSE	="BtnClose";
tbAutoLT.RESET	    ="BtnReset";
tbAutoLT.TEST       ="BtnTest"

local TapHaoGTTT       = "TapHaoGTT"
local TLDaiii       ="TLDaiii"
local TruongMon5D       = "TruongMon5D"
local CongSkill5DC         = "CongSkill5DC"
local GiaNhap5Doc   ="GiaNhap5Doc"


local TruongMonTT       = "TruongMonTT"
local CongSkillTT         = "CongSkillTT"
local GiaNhapTT   ="GiaNhapTT"

local UseTranPhap   ="UseTranPhap"
local TuuLau        ="TuuLau"
local LongNgu       ="LongNgu"

local HLTieu        ="HLTieu"
local HLTrung       ="HLTrung"
local HLDai         ="HLDai"
local TLTieu        ="TLTieu"
local TLTrung       ="TLTrung"
local TLDai         ="TLDai"

local VSTBRuong     = "VSTBRuong"
local VSVRuong      = "VSVRuong"

tbAutoLT.BTN_ThrowAll    = "ChkThrowAll"
tbAutoLT.BTN_Luu          ="BtnLuu"

self.tbSetting	= {};
local checkbox = 0

function tbAutoLT:load()
    if not self.tbSetting.nThrowAll then
        self.tbSetting.nThrowAll = 0
    end
end

function tbAutoLT:Init()

end
function tbAutoLT:Update()
    Btn_Check(self.UIGROUP, self.BTN_ThrowAll, self.tbSetting.nThrowAll);
end

function tbAutoLT:OnOpen()
    self:load()
    self:Update()
end
function tbAutoLT:check()
    if self.tbSetting.nThrowAll == 1 then
        me.Msg("check box = 1")
    else
        me.Msg("check box = 0")
    end
end

function tbAutoLT:OnButtonClick(szWnd, nParam)
    if szWnd == self.BTN_CLOSE then
        UiManager:SwitchWindow(Ui.UI_AUTOLT);
    elseif szWnd == self.RESET then
        tbAutoLT:ReLoad1()
    elseif (szWnd == self.BTN_ThrowAll) then
        self.tbSetting.nThrowAll = nParam	
		-- Btn_Check(self.UIGROUP, self.CHK_THROWALL, self.tbSetting.nThrowAll);
		if self.tbSetting.nThrowAll == 1 then
            Ui.tbLogic.tbAutoPath:GotoPos({nMapId=5,nX=1584,nY=3194})
        else
            Ui.tbLogic.tbAutoPath:GotoPos({nMapId=5,nX=1618,nY=3149})
        end

    elseif (szWnd == self.BTN_Luu) then
        -- self:Update()
        -- tbAutoLT:check()
        -- Ui(Ui.UI_THUNGDO):OnButtonClick("so1")
        for i = 1, 1 do
            Map.tbFunc:BuyHLTieu()
        end
        for i = 1, 1 do
            Map.tbFunc:BuyHLTrung()
        end
        for i = 1, 1 do
            Map.tbFunc:BuyHLDai()
        end
        for i = 1, 1 do
            Map.tbFunc:BuyTLTieu()
        end
        for i = 1, 1 do
            Map.tbFunc:BuyTLTrung()
        end
        for i = 1, 1 do
            Map.tbFunc:BuyTLDai()
        end
        
---------------------------------------------------------        
    elseif szWnd == TapHaoGTTT then
        --tbAutoLT:TuiTanThu()
        Map.tbSuperMapLink:StartGoto({szType = "npcpos", szLink = ",5,3565"}) --tap hoa GTT
        UiManager:CloseWindow(Ui.UI_SAYPANEL)

    elseif szWnd == TruongMonTT then
        --tbAutoLT:TuiTanThu()
        --tbAutoLT:UseLBMRandNgua()
        --Map.tbSuperMapLink:StartGoto({szType = "npcpos", szLink = ",20,3524,6,1"}) --Truong Mon Cai Bang
    elseif szWnd == CongSkillTT then
        --tbAutoLT:TuiTanThu()
        Map.nCongSkill:MaNhan()
        

    elseif szWnd == GiaNhapTT then
        tbAutoLT:TuiTanThu()
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 5)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 8)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 1)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 1)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 1)
    
    elseif szWnd == GiaNhap5Doc then
        tbAutoLT:TuiTanThu()
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 4)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 4)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 1)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 1)
        UiManager:CloseWindow(Ui.UI_SAYPANEL)

    elseif szWnd == CongSkill5DC then
        Map.nCongSkill:CongSkill5DC()
        
    elseif szWnd == UseTranPhap then
        UiManager:OnPressESC();
        tbAutoLT:UseItem()
        tbAutoLT:TuiTanThu()
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 1)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 5)
        UiManager:CloseWindow(Ui.UI_SAYPANEL)
        --UiManager:OnPressESC();
        Map.tbSuperMapLink:StartGoto({szType = "npcpos", szLink = ",7,3571,4,2"})

    elseif szWnd == TuuLau then
        Map.tbSuperMapLink:StartGoto({szType = "npcpos", szLink = ",7,3566,1"})

    elseif szWnd == LongNgu then
        Map.tbSuperMapLink:StartGoto({szType = "npcpos", szLink = ",7,3571,5"})

    elseif szWnd == TLDaiii then
        local che = 5
        for i = 1, 2 do
            if che < GetTime() then
                me.DoRecipe(1577)
            end
        end
        -- Map.tbFunc:BuyNL()
        --tbAutoLT:TuiTanThu()
        --Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 2)
        --Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 3) --chon dong
        --tbAutoLT:UseLBMRandNgua()

    elseif szWnd == HLTieu then
        tbAutoLT:TuiTanThu()
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 7)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 1)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 2)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 1)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 2)

    elseif szWnd == HLTrung then
        tbAutoLT:TuiTanThu()
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 7)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 1)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 2)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 2)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 3)

    elseif szWnd == HLDai then
        tbAutoLT:TuiTanThu()
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 7)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 1)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 2)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 3)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 3)

    elseif szWnd == TLTieu then
        tbAutoLT:TuiTanThu()
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 7)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 1)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 1)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 1)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 2)
    
    elseif szWnd == TLTrung then
        tbAutoLT:TuiTanThu()
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 7)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 1)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 1)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 2)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 3)

    elseif szWnd == TLDai then
        tbAutoLT:TuiTanThu()
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 7)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 1)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 1)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 3)
        Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 3)
    
    elseif szWnd == VSTBRuong then
        me.DoRecipe(1577); --ID VS than bi ruong
        --Timer:Register(3.2*Env.GAME_FPS, tbAutoLT.VSTBRuong, self)

    elseif szWnd == VSVRuong then
        me.DoRecipe(1582); --ID VSV Ruong
        --Timer:Register(3.2*Env.GAME_FPS, tbAutoLT.VSVRuong, self)

---------------------------------------------------------------
    elseif szWnd == self.TEST then
        me.Msg("test test tes")
        print("Đi tiếp")
        --Map.tbNAT:Test()
        Map.tbFunc:Test()
        -- UiManager:SwitchWindow(Ui.UI_THUNGDO)
        -- UiManager:SwitchWindow(Ui.UI_ITEMBOX)
        -- E:\KTthienMenh\interface\Auto_LinhTinh\Capture.spr -- duong dan hinh
        --UiManager.tbLinkClass["npcpos"]:OnClick(szLink);
        -- UiManager:SwitchWindow(Ui.UI_EQUIPENHANCE) -- bang cuong hoa
        -- if self.tbSetting.nThrowAll == 1 then
        -- Ui.tbLogic.tbAutoPath:GotoPos({nMapId=5,nX=1586,nY=3199})
        -- Map.tbFunc:fnfindNpc(3566,"Đại lão Bạch");
        -- UiManager:SwitchWindow(Ui.UI_LoginHelper);
        UiManager:SwitchWindow(Ui.UI_RELATION);
        -- else
        --     Ui.tbLogic.tbAutoPath:GotoPos({nMapId=5,nX=1618,nY=3149})
        -- end
        

        -- local nMapId, nCurWorldPosX, nCurWorldPosY = me.GetWorldPos();
        -- local szMsg = string.format("Triệu tập::,"..nMapId..","..nCurWorldPosX..","..nCurWorldPosY.." , ("..GetMapNameFormId(nMapId)..") Cần anh em giúp đở !");
        -- local tbMsg = {};
	    -- tbMsg.szMsg = string.format("Chọn kênh Chat để gọi triệu tập!");
	    -- tbMsg.nOptCount = 2;
	    -- tbMsg.tbOptTitle = { "Hủy", "Gọi"};
	    -- UiManager:OpenWindow(Ui.UI_MSGBOX, tbMsg);
        -- Ui(Ui.UI_MSGBOX).nOptIndex = 1
	    -- function tbMsg:Callback(nOptIndex, n1, n2)
		--     -- nOptIndex = 2
        --     -- Ui(Ui.UI_MSGBOX):OnButtonClick( tbMsg.tbOptTitle[0])
        --     if (nOptIndex == 2) then	--Ƶ��
		-- 	    SendChatMsg(szMsg);
		--     end
        --     if (nOptIndex == 1) then	--Ƶ��
		-- 	    me.Msg("huyhuyhuyhuy")
		--     end
            
	    -- end
        -- Ui(Ui.UI_MSGBOX).nOptIndex = 2
	    
        -- UiManager:SwitchWindow(Ui.UI_YOULONGMIBAO)
        -- Log:Ui_SendLog("acuqweasong")
        -- Ui(Ui.UI_AUTOLT):OnButtonClick("TapHaoGTT")
        --Map.tbSuperMapLink:StartGoto({szType = "npcpos", szLink = ",7,3567,3"})
	    --UiShortcutAlias:AddAlias("GM_S4");	-- Phím tắt：Ctrl + 4 
        --UiManager:OnPressESC(); -- bấm ESC

        --Youlongmibao.tbYoulongG:SwitchState()

        --UiShortcutAlias:AddAlias("GM_S4", szCmd);
        -- UiManager:SwitchWindow(Ui.UI_AUTOAIM_UI)
        --UiManager:SwitchWindow(Ui.UI_ITEMBOX)
        --UiManager:SwitchWindow(Ui.UI_FIGHTSKILL) -- mo Bang skill F3
        --Map.tbSuperMapLink:StartGoto({szType = "npcpos", szLink = ",5,3601,7,1"});
        --if UiManager:WindowVisible(Ui.UI_FIGHTSKILL) ~= 1 then
            --me.Msg("hahahha")
          -- UiManager:SwitchWindow(Ui.UI_FIGHTSKILL)
           --Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnKombatPage2") -- chon Bang skill
            --Ui(Ui.UI_FIGHTSKILL)

           -- Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_2_2") -- cong skill cot 2 skill thu 2
            --Ui(Ui.UI_FIGHTSKILL):OnButtonClick("BtnLvup1_3_2") -- cong skill cot 2 skill thu 3
            --Ui(Ui.UI_IBSHOP):OnButtonClick("BtnBindGoldSection"); -- chon dong khoa KTC
       -- else
           -- UiManager:CloseWindow(Ui.UI_FIGHTSKILL)
       -- end
        --tbAutoLT:OpenExtBag()
    end

end

function tbAutoLT.GoTo(M,X,Y)
    local tbPosInfo ={}
    tbPosInfo.szType = "pos"
    tbPosInfo.szLink = ","..M..","..X..","..Y
    Map.tbSuperMapLink.StartGoto(Map.tbSuperMapLink,tbPosInfo)
end

function tbAutoLT:OpenExtBag()	
	if (UiManager:WindowVisible(Ui.UI_ITEMBOX) ~= 1) then		
		UiManager:SwitchWindow(Ui.UI_ITEMBOX);
	end	
	local tbItemBox = Ui(Ui.UI_ITEMBOX);	
	local tbExtBagLayout = Ui.tbLogic.tbExtBagLayout;
    tbExtBagLayout:Show();  
end

---------------------------------------------------------
function tbAutoLT:TuiTanThu()
    local tbFind = me.FindItemInBags(18,1,351,1);
	for j, tbItem in pairs(tbFind) do
	    me.UseItem(tbItem.pItem);
	end
end
function tbAutoLT:UseItem()
    local tbFindTPhap = me.FindItemInBags(18, 1, 320, 1);
	local pItemTPhap = tbFindTPhap[1].pItem;
    me.UseItem(pItemTPhap);
    Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 1)
    Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 7)
end

function tbAutoLT:UseLBMRandNgua()
    --local tbFindLBMR = me.FindItemInBags(18, 1, 216, 1);
    local tbFindNgua = me.FindItemInBags(1, 12, 10, 4);
	--local pItemLBMR = tbFindLBMR[1].pItem;
    local pItemNgua = tbFindNgua[1].pItem;
    --local pGetLBMR =  me.GetItemCountInBags(18, 1, 216, 1);
    local pGetNgua =  me.GetItemCountInBags(1, 12, 10, 4);
    if pGetNgua == 0 then
        --return
        me.Msg("anhcuong")
        return
    else
        me.UseItem(pItemNgua);
    end
    --me.UseItem(pItemLBMR);
    --Ui(Ui.UI_SAYPANEL):OnListSel("LstSelectArray", 1)
    
end

function tbAutoLT:VSTBRuong()
    local nHLco = me.dwCurGTP;
    local nNHHTco = me.GetItemCountInBags(18,1,205,1,0,0);
    if nHLco >= 20000 and nNHHTco >= 200 then
        me.DoRecipe(1577);
    else
        me.Msg("het HL or NHHT")
        return 0
    end
end

function tbAutoLT:VSVRuong()
    local nTLco = me.dwCurMKP;
    local nVSTBRuong = me.GetItemCountInBags(18,1,337,1,0,0);
    --me.Msg(""..nVSTBRuong)
    if nTLco >= 22500 and nVSTBRuong > 0 then
        me.DoRecipe(1582)
    else
        me.Msg("Het TL or VSTBRuong")
        return 0
    end
end

function tbAutoLT:ReLoad1()
	local function fnDoScript(szFilePath)
		local szFileData	= KFile.ReadTxtFile(szFilePath);
		assert(loadstring(szFileData, szFilePath))();
	end
	fnDoScript("\\interface\\Auto_LinhTinh\\AutoLT.lua");
    fnDoScript("\\interface\\Auto_LinhTinh\\BuyNAT.lua");
    fnDoScript("\\interface\\Auto_LinhTinh\\Function.lua");
    fnDoScript("\\interface\\Auto_LinhTinh\\CongSkill.lua");
    fnDoScript("\\interface\\Auto_LinhTinh\\testButton.lua");
    fnDoScript("\\interface\\Auto_LinhTinh\\thungdo.lua");
	me.Msg("<color=yellow>Reload Thành Công<color>")
	UiManager:OpenWindow("UI_INFOBOARD", "<color=red>Xong")
	Ui:RegisterNewUiWindow("UI_AUTOLT", "AutoLT", {"a",101, 110}, {"b",402, 222}, {"c",502, 222});
    Ui:RegisterNewUiWindow("UI_THUNGDO", "thungdo", {"a",595, 50}, {"b",402, 222}, {"c",502, 222});
end
--C:\anhcuong\ThienHaKiem\interface\autothief
Ui:RegisterNewUiWindow("UI_AUTOLT", "AutoLT", {"a",101, 90}, {"b",402, 222}, {"c",502, 222});

local tCmd={"UiManager:SwitchWindow(Ui.UI_AUTOLT)", "AutoLT", "", "Shift+e", "Shift+e", "多点挂机"};
        AddCommand(tCmd[4], tCmd[3], tCmd[2], tCmd[7] or UiShortcutAlias.emKSTATE_INGAME);
        UiShortcutAlias:AddAlias(tCmd[2], tCmd[1]);	-----快捷键alt+j

-- self:Init();