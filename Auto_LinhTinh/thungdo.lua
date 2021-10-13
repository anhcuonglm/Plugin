local tbTestMoi = Ui:GetClass("thungdo");
local self=tbTestMoi;
local nDenJi = 5;

local so1 = "so1"


function tbTestMoi:OnButtonClick(szWnd, nParam)
    if szWnd == so1 then
        me.Msg("so1")
        
    end
end

me.Msg("thungdo")
function tbTestMoi:ReLoad1()
	local function fnDoScript(szFilePath)
		local szFileData	= KFile.ReadTxtFile(szFilePath);
		assert(loadstring(szFileData, szFilePath))();
	end
	fnDoScript("\\interface\\Auto_LinhTinh\\thungdo.lua");
    
    
    -- Ui:RegisterNewUiWindow("UI_THUNGDO", "thungdo", {"a",50, 90}, {"b",402, 222}, {"c",502, 222});
end
--C:\anhcuong\ThienHaKiem\interface\autothief
Ui:RegisterNewUiWindow("UI_THUNGDO", "thungdo", {"a",550, 200}, {"b",402, 222}, {"c",502, 222});

local tCmd={"UiManager:SwitchWindow(Ui.UI_THUNGDO)", "thungdo", "", "Shift+r", "Shift+r", "多点挂机"};
        AddCommand(tCmd[4], tCmd[3], tCmd[2], tCmd[7] or UiShortcutAlias.emKSTATE_INGAME);
        UiShortcutAlias:AddAlias(tCmd[2], tCmd[1]);	-----快捷键alt+j

