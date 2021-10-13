local uitestButton = Ui:GetClass("testButton");
local self=uitestButton;
local nDenJi = 5;

me.Msg("testButton")

uitestButton.BTN_testButton = "TestBnt"

uitestButton.testButton =
{ 

	{"chon dong 1","test"},
	{"Giang Tân Thôn "},
	{"chon dong 3"},
	{"chon dong 4"},
	{"chon dong 5"},
	{"chon dong 6"},
	{"chon dong 7"},
	{"----------"},

}

uitestButton.OnButtonClick=function(self,szWnd, nParam)
    if (szWnd == self.BTN_testButton) then
		DisplayPopupMenu(
		self.UIGROUP,
		szWnd,
		8, 5,
		self.testButton[1][1], -- hien thi off 1 dong 1
		1, -- dong thu 1
		self.testButton[2][1], -- hien thi off 1 dong 2
		2,
		self.testButton[3][1],
		3,
		self.testButton[4][1],
		4,
		self.testButton[5][1],
		5,
		self.testButton[6][1],
		6,
		self.testButton[7][1],
		7,
		self.testButton[8][1],
		8
		);
    end
end


uitestButton.OnMenuItemSelected=function(self,szWnd, nItemId, nParam)
	if szWnd == self.BTN_testButton then
			if nItemId==1 then
		Map.tbFunc:Test()
			elseif nItemId==2 then
        Map.tbSuperMapLink:StartGoto({szType = "npcpos", szLink = ",5,0,"});	
			elseif nItemId==3 then
       	Map.tbSuperMapLink:StartGoto({szType = "npcpos", szLink = ",132,0,"});		
			elseif nItemId==4 then
        Map.tbSuperMapLink:StartGoto({szType = "npcpos", szLink = ",133,0,"});	  
			elseif nItemId==5 then
        Map.tbSuperMapLink:StartGoto({szType = "npcpos", szLink = ",134,0,"});	
			elseif nItemId==6 then
        Map.tbSuperMapLink:StartGoto({szType = "npcpos", szLink = ",135,0,"});	
			-- elseif nItemId==7 then
        -- Map.tbSuperMapLink:StartGoto({szType = "npcpos", szLink = ",136,0,"});	              
			-- elseif nItemId==8 then
        -- Map.tbSuperMapLink:StartGoto({szType = "npcpos", szLink = ",137,0,"});	         
		   	end
	 end
end




Ui:RegisterNewUiWindow("TESTBUTTON", "testButton", {"a", 350, 510}, {"b", 0, 0}, {"c", 0, 0});

local tCmd={"UiManager:SwitchWindow(Ui.TESTBUTTON)", "testButton", "", "Shift+w", "Shift+w", "多点挂机"};
        AddCommand(tCmd[4], tCmd[3], tCmd[2], tCmd[7] or UiShortcutAlias.emKSTATE_INGAME);
        UiShortcutAlias:AddAlias(tCmd[2], tCmd[1]);

-- me.Msg("testButton1111")