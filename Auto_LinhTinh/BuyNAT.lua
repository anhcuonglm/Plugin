me.Msg("Test BuyNAT")
local tbNAT = Map.tbNAT or {}
Map.tbNAT = tbNAT

local self = tbNAT
local nSwitch = 0
local nSwitch1 = 0
local nSwitch2 = 0
local NATTimer
local NATTimer1
local NATTimer2

local szCmd = [=[
	Map.tbNAT:Shitch();
]=];

local szCmd = [=[
	Map.tbNAT:Shitch1();
]=];

local szCmd = [=[
	Map.tbNAT:Shitch2();
]=];

--[[
function tbNAT:Shitch2()
    if nSwitch1 == 0 then
        tbNAT:Star_UseKNB()
        UiManager:OpenWindow("UI_INFOBOARD", "<bclr=Black><color=Yellow>Bắt Đầu an KNB [Alt+B]<color>")
    else
        tbNAT:Stop_UseKNB()
        return 0
    end
end



function tbNAT:Shitch1()
    if nSwitch1 == 0 then
        tbNAT:Star_UseKNB()
        UiManager:OpenWindow("UI_INFOBOARD", "<bclr=Black><color=Yellow>Bắt Đầu an KNB [Alt+B]<color>")
    else
        tbNAT:Stop_UseKNB()
        return 0
    end
end
--]]

function tbNAT:Shitch()
    if nSwitch == 0 then
        tbNAT:Star_Buy()
        UiManager:OpenWindow("UI_INFOBOARD", "<bclr=Black><color=Yellow>Bắt Đầu Mua NAT [Alt+Z]<color>")
    else
        tbNAT:Stop_Buy()
        return 0
    end
end



function tbNAT:Star_Buy()
    nSwitch = 1
    me.Msg("Star Buy")
    NATTimer = Timer:Register(1*Env.GAME_FPS, tbNAT.BuyNAT, self)
end

function tbNAT:Stop_Buy()
    nSwitch = 0
    UiManager:OpenWindow("UI_INFOBOARD", "<bclr=Black><color=white> Dừng [Alt+Z]<color>");
    me.Msg("Stop Buy Buy Buy")
    --UiManager:CloseWindow(Ui.UI_IBSHOP);
    NATTimer = Ui.tbLogic.tbTimer:Close(tbNAT.BuyNAT);
    return 0
end

function tbNAT:BuyNAT()
    if nSwitch == 1 then
        local Name = "Nguyệt Ảnh Thạch"
        local SoLuong = 0
        local LoaiTien = 1
        --local PhanLoai = 102
        local Trang = 3
        local coin = me.nCoin -- Đồng
        me.Msg(""..coin.."")
        local freeBag = me.CalcFreeItemCountInBags(19,3,1,5,0,0)
        local findItem =  me.GetItemCountInBags(18, 1, 476, 1) -- NAT
        local bat = 0
        local tbFind = me.FindItemInBags(18, 1, 524, 1); -- chien thu dulong
        -- local pItem = tbFind[1].pItem;
        --if findItem > 0 then
            --Map.tbSuperMapLink:StartGoto({szType = "npcpos", szLink = ",5,3571"});
            --local bOK, szMsg = me.ShopBuyItem(3693,findItem) -- 3693 ID Chiến Thư Du Long
        --end
        if coin < 225 then
            me.Msg("Hết Đồng rồi Ku")
            tbNAT:Stop_Buy()
            return 0
        end
        
        if coin > freeBag*225 then
            SoLuong = freeBag
            me.Msg("1")
        else
            SoLuong = coin/225
        end
        me.Msg("123123123")
        tbNAT:ByKyCacTran(Name, SoLuong, LoaiTien, PhanLoai, Trang)

    else
        tbNAT:Stop_Buy()
        return 0
    end
end

function tbNAT:BuyNAT2()
    if nSwitch == 1 then
        local coin = me.nCoin -- Đồng
        local findNAT =  me.GetItemCountInBags(18, 1, 476, 1) -- NAT
        local findANTRuong =  me.GetItemCountInBags(18, 1, 1339, 1) -- NAT Ruong
        local findCTDL =  me.GetItemCountInBags(18, 1, 524, 1)
        me.Msg(""..findANTRuong.."")
        if coin > 22500 then
            Map.tbSuperMapLink:StartGoto({szType = "npcpos", szLink = ",5,3601,8,1"});
        elseif findANTRuong > 0 then
            tbNAT:UseNATRuong()
        elseif findNAT > 0 then
            me.Msg(""..findNAT.."")
            Map.tbSuperMapLink:StartGoto({szType = "npcpos", szLink = ",5,3571,5,1"});
            local bOK, szMsg = me.ShopBuyItem(3693,findNAT)
        elseif findNAT == 0 then
            tbNAT:Stop_Buy()
            UiManager:CloseWindow(Ui.UI_SHOP);
            return 0
        --elseif findCTDL > 0 then
            --tbNAT:UseCTDL()
            --tbNAT:Stop_Buy()
            --UiManager:CloseWindow(Ui.UI_SHOP);
            --return 0
        end
    else
        tbNAT:Stop_Buy()
        return 0
    end
end

function tbNAT:UseCTDL()
    local tbFind = me.FindItemInBags(18, 1, 524, 1);
	for j, tbItem in pairs(tbFind) do
	    me.UseItem(tbItem.pItem);
	end
end

function tbNAT:UseNATRuong()
    local tbFind = me.FindItemInBags(18, 1, 1339, 1);
	for j, tbItem in pairs(tbFind) do
	    me.UseItem(tbItem.pItem);
	end
end

function tbNAT:Star_UseKNB()
    nSwitch1 = 1
    me.Msg("Star UseKNB")
    NATTimer1 = Timer:Register(3.3*Env.GAME_FPS, tbNAT.UseKNB, self)
end

function tbNAT:Stop_UseKNB()
    nSwitch1 = 0
    UiManager:OpenWindow("UI_INFOBOARD", "<bclr=Black><color=white> Dừng [Alt+B]<color>");
    me.Msg("Stop Buy Buy Buy")
    --UiManager:CloseWindow(Ui.UI_IBSHOP);
    NATTimer1 = Ui.tbLogic.tbTimer:Close(tbNAT.UseKNB);
    return 0
end

function tbNAT:UseKNB()
    if nSwitch1 == 1 then
        me.Msg("UseKNB")
        --local tbGetKNB = me.GetItemCountInBags(18, 1, 1338, 2) -- KNB
        local tbGetVSVRuong = me.GetItemCountInBags(18, 1, 338, 1)
        if tbGetVSVRuong > 0 then --or tbGetKNB > 0 then
            me.Msg("Mo VSVRuong")
            --local tbFind = me.FindItemInBags(18, 1, 1338, 2); --KNB
            local tbFind = me.FindItemInBags(18, 1, 338, 1); --VSV Ruong
	        for j, tbItem in pairs(tbFind) do
	            me.UseItem(tbItem.pItem);
	        end
        else
            --me.Msg("VSVRuong")
            --nSwitch1 = 0
            tbNAT:Stop_UseKNB()
            --me.Msg("Stop")
            return 0
        end
    else
        tbNAT:Stop_UseKNB()
        return 0
    end
end

function tbNAT:ByKyCacTran(Name, SoLuong, LoaiTien, PhanLoai, Trang)
    local Trang = 2
    local PhanLoai = 102
    local Name = "Nguyệt Ảnh Thạch"
	if UiManager:WindowVisible(Ui.UI_IBSHOP) == 1 then
		local uiKCT = Ui(Ui.UI_IBSHOP)
		local list = uiKCT:IbShop_GetWareList(LoaiTien, PhanLoai, Trang)
		if list and list ~= nil then
			for i = 1, #list do
				local nWareID = list[i]
				local tbInfo = me.IbShop_GetWareInf(nWareID)
				if not tbInfo then
					--return true
				end
				local pItem = KItem.CreateTempItem(tbInfo.nGenre, tbInfo.nDetailType, tbInfo.nParticular, tbInfo.nLevel, tbInfo.nSeries)
				if Name == pItem.szName then
					IbShop.bShowInfo = me.IbCart_AddWare(nWareID, LoaiTien - 1)
					me.IbCart_SetWareCount(nWareID, SoLuong)
					local nRet = me.IbCart_Commit(LoaiTien - 1)
					me.IbCart_Clear()
					--return true
				end
			end
		else
			uiKCT:IbShop_Apply(LoaiTien, PhanLoai, Trang)
            me.Msg("toi day")
			--uiKCT:HideGoodsShow()
			--return true
		end
	else
		UiManager:OpenWindow(Ui.UI_IBSHOP, "K\225\187\179 Tr\195\162n C\195\161c")
		--return true
	end
	return false
end

function tbNAT:Test()
    me.Msg("test esttetstatsteqw")
end

local tCmd={"Map.tbNAT:Shitch();", "BuyNAT", "", "Alt+Z", "Alt+Z", "BuyNAT"};
	AddCommand(tCmd[4], tCmd[3], tCmd[2], tCmd[7] or UiShortcutAlias.emKSTATE_INGAME);
	UiShortcutAlias:AddAlias(tCmd[2], tCmd[1]);

--local tCmd={"Map.tbNAT:Shitch();", "BuyNAT", "", "Alt+Z", "Alt+Z", "BuyNAT"};
--	AddCommand(tCmd[4], tCmd[3], tCmd[2], tCmd[7] or UiShortcutAlias.emKSTATE_INGAME);
--	UiShortcutAlias:AddAlias(tCmd[2], tCmd[1]);


local tCmd={"Map.tbNAT:Shitch1();", "UseKNB", "", "Alt+B", "Alt+B", "UseKNB"};
	AddCommand(tCmd[4], tCmd[3], tCmd[2], tCmd[7] or UiShortcutAlias.emKSTATE_INGAME);
	UiShortcutAlias:AddAlias(tCmd[2], tCmd[1]);