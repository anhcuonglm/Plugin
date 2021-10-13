local self = tbFunc

local tbFunc = Map.tbFunc or {}
Map.tbFunc = tbFunc
me.Msg("test test ACuong")

--local idKhoanLv7 = 722
--local idKhoanLv8 = 723
--local idThachLv1 = 726
--local idThachLv2 = 727

local szCmd = [=[
	"Map.tbFunc:BuyNL();
]=];

local uiSayPanel =  Ui(Ui.UI_SAYPANEL)
function tbFunc:Test()
    me.Msg("test ACuong ACuong")
end

function tbFunc:BuyHLTieu()
    tbFunc:TuiTanThu()
    uiSayPanel:OnListSel("LstSelectArray", 7);
    uiSayPanel:OnListSel("LstSelectArray", 1);
    uiSayPanel:OnListSel("LstSelectArray", 2);
    uiSayPanel:OnListSel("LstSelectArray", 1);
    uiSayPanel:OnListSel("LstSelectArray", 2);
    local function myclose()
        UiManager:CloseWindow(Ui.UI_SAYPANEL);
        return 0;
    end
    Ui.tbLogic.tbTimer:Register(10, myclose);
    return 0
end

function tbFunc:BuyHLTrung()
    tbFunc:TuiTanThu()
    uiSayPanel:OnListSel("LstSelectArray", 7);
    uiSayPanel:OnListSel("LstSelectArray", 1);
    uiSayPanel:OnListSel("LstSelectArray", 2);
    uiSayPanel:OnListSel("LstSelectArray", 2);
    uiSayPanel:OnListSel("LstSelectArray", 3);
    local function myclose()
        UiManager:CloseWindow(Ui.UI_SAYPANEL);
        return 0;
    end
    Ui.tbLogic.tbTimer:Register(10, myclose);
    return 0
end

function tbFunc:BuyHLDai()
    tbFunc:TuiTanThu()
    uiSayPanel:OnListSel("LstSelectArray", 7);
    uiSayPanel:OnListSel("LstSelectArray", 1);
    uiSayPanel:OnListSel("LstSelectArray", 2);
    uiSayPanel:OnListSel("LstSelectArray", 3);
    uiSayPanel:OnListSel("LstSelectArray", 3);
    local function myclose()
        UiManager:CloseWindow(Ui.UI_SAYPANEL);
        return 0;
    end
    Ui.tbLogic.tbTimer:Register(10, myclose);
    return 0
end

function tbFunc:BuyTLTieu()
    tbFunc:TuiTanThu()
    uiSayPanel:OnListSel("LstSelectArray", 7);
    uiSayPanel:OnListSel("LstSelectArray", 1);
    uiSayPanel:OnListSel("LstSelectArray", 1);
    uiSayPanel:OnListSel("LstSelectArray", 1);
    uiSayPanel:OnListSel("LstSelectArray", 2);
    local function myclose()
        UiManager:CloseWindow(Ui.UI_SAYPANEL);
        return 0;
    end
    Ui.tbLogic.tbTimer:Register(10, myclose);
    return 0
end

function tbFunc:BuyTLTrung()
    tbFunc:TuiTanThu()
    uiSayPanel:OnListSel("LstSelectArray", 7);
    uiSayPanel:OnListSel("LstSelectArray", 1);
    uiSayPanel:OnListSel("LstSelectArray", 1);
    uiSayPanel:OnListSel("LstSelectArray", 2);
    uiSayPanel:OnListSel("LstSelectArray", 3);
    local function myclose()
        UiManager:CloseWindow(Ui.UI_SAYPANEL);
        return 0;
    end
    Ui.tbLogic.tbTimer:Register(10, myclose);
    return 0
end

function tbFunc:BuyTLDai()
    tbFunc:TuiTanThu()
    uiSayPanel:OnListSel("LstSelectArray", 7);
    uiSayPanel:OnListSel("LstSelectArray", 1);
    uiSayPanel:OnListSel("LstSelectArray", 1);
    uiSayPanel:OnListSel("LstSelectArray", 3);
    uiSayPanel:OnListSel("LstSelectArray", 3);
    local function myclose()
        UiManager:CloseWindow(Ui.UI_SAYPANEL);
        return 0;
    end
    Ui.tbLogic.tbTimer:Register(10, myclose);
    return 0
end

-------------------Gia Nhap Mon Phai--------------------
function tbFunc:GiaNhapMN()
    tbFunc:TuiTanThu()
    uiSayPanel:OnListSel("LstSelectArray", 2);
    uiSayPanel:OnListSel("LstSelectArray", 8);
    uiSayPanel:OnListSel("LstSelectArray", 1);
    local function myclose()
        UiManager:CloseWindow(Ui.UI_SAYPANEL);
        return 0;
    end
    Ui.tbLogic.tbTimer:Register(10, myclose);
    return 0
end
function tbFunc:GiaNhapTT()
    tbFunc:TuiTanThu()
    uiSayPanel:OnListSel("LstSelectArray", 2);
    uiSayPanel:OnListSel("LstSelectArray", 3);
    uiSayPanel:OnListSel("LstSelectArray", 1);
    local function myclose()
        UiManager:CloseWindow(Ui.UI_SAYPANEL);
        return 0;
    end
    Ui.tbLogic.tbTimer:Register(10, myclose);
    return 0
end
--------------------TuiTanThu---------------------------
function tbFunc:TuiTanThu()
    local tbFind = me.FindItemInBags(18,1,351,1);
	for j, tbItem in pairs(tbFind) do
	    me.UseItem(tbItem.pItem);
	end
    
end

function tbFunc:BuyNL()
    Map.tbSuperMapLink:StartGoto({szType = "npcpos", szLink = ",5,3565,3"})
    local bOK, szMsg = me.ShopBuyItem(726, 42); --idThachLv1
    local bOK, szMsg = me.ShopBuyItem(727, 67); --idThachLv2
    local bOK, szMsg = me.ShopBuyItem(728, 63); 
    local bOK, szMsg = me.ShopBuyItem(729, 50); 
    local bOK, szMsg = me.ShopBuyItem(730, 28);
    local bOK, szMsg = me.ShopBuyItem(731, 18);
    local bOK, szMsg = me.ShopBuyItem(732, 12); --idThachLv7
    local bOK, szMsg = me.ShopBuyItem(722, 10); --idKhoanLv7
    local bOK, szMsg = me.ShopBuyItem(723, 10); --idKhoanLv8
end


tbFunc.GetAroundNpcId = function(self,nTempId)
	local tbAroundNpc	= KNpc.GetAroundNpcList(me,1000);
	for _, pNpc in ipairs(tbAroundNpc) do
		if (pNpc.nTemplateId == nTempId) then
			return pNpc.nIndex
		end
	end
	return
end
tbFunc.fnfindNpc = function(self, nNpcId, szName)
	local nMyMapId	= me.GetMapTemplateId();
	local nTargetMapId;
	if (nMyMapId <30 and nMyMapId >22) or (nMyMapId <9 and nMyMapId >0) then
		nTargetMapId = nMyMapId;
	elseif nCityId then
		nTargetMapId = nCityId
	else
		nTargetMapId = 5
	end
	if (nMyMapId == 556 or nMyMapId == 558 or nMyMapId == 559) and (nNpcId == 3566 or nNpcId == 3564) then 
		nTargetMapId = nMyMapId;
	end

	local nX1, nY1;
	nX1, nY1 = KNpc.ClientGetNpcPos(nTargetMapId, nNpcId);


	local tbPosInfo ={}
	tbPosInfo.szType = "pos"
	tbPosInfo.szLink = szName..","..nTargetMapId..","..nX1..","..nY1
	if (nMyMapId <30 and nMyMapId >22) or (nMyMapId <9 and nMyMapId >0) or nSetPhu == 0 then	
		Ui.tbLogic.tbAutoPath:GotoPos({nMapId=nTargetMapId,nX=nX1,nY=nY1})
	else
		local tbFind = me.FindItemInBags(unpack({18,1,nSetHTPId,1}));
		for j, tbItem in pairs(tbFind) do
			me.UseItem(tbItem.pItem);
			return;
		end
		self.fnfindNpc(nNpcId, szName);
	end	
end



local tCmd={"Map.tbFunc:BuyNL();", "BuyNL", "", "Alt+R", "Alt+R", "BuyNL"};
	AddCommand(tCmd[4], tCmd[3], tCmd[2], tCmd[7] or UiShortcutAlias.emKSTATE_INGAME);
	UiShortcutAlias:AddAlias(tCmd[2], tCmd[1]);