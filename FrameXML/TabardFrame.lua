local borderIndex = 0;
local borderColorIndex = 0;

function TabardFrame_OnLoad(self)
	self:RegisterEvent("OPEN_TABARD_FRAME");
	self:RegisterEvent("CLOSE_TABARD_FRAME");
	self:RegisterEvent("TABARD_CANSAVE_CHANGED");
	self:RegisterEvent("TABARD_SAVE_PENDING");
	self:RegisterEvent("UNIT_MODEL_CHANGED");
	TabardFrameCostFrame:SetBackdropBorderColor(0.4, 0.4, 0.4);
	TabardFrameCostFrame:SetBackdropColor(TOOLTIP_DEFAULT_BACKGROUND_COLOR.r, TOOLTIP_DEFAULT_BACKGROUND_COLOR.g, TOOLTIP_DEFAULT_BACKGROUND_COLOR.b);
	MoneyFrame_Update("TabardFrameCostMoneyFrame",1);
    

	local backgroundAlpha = 0.40;
	TabardFrameEmblemTopRight:SetAlpha(backgroundAlpha);
	TabardFrameEmblemTopLeft:SetAlpha(backgroundAlpha);
	TabardFrameEmblemBottomRight:SetAlpha(backgroundAlpha);
	TabardFrameEmblemBottomLeft:SetAlpha(backgroundAlpha);
end

function TabardCharacterModelFrame_OnLoad(self)
	self.rotation = 0;
	TabardModel:SetRotation(self.rotation);
end

function TabardFrame_OnEvent(self, event, ...)
	local unit = ...;
	if ( event == "OPEN_TABARD_FRAME" ) then
		TabardModel:SetUnit("player");
		SetPortraitTexture(TabardFramePortrait,"npc");
		TabardFrameNameText:SetText(UnitName("npc"));
		TabardModel:InitializeTabardColors();
		TabardFrame_UpdateTextures();
		TabardFrame_UpdateButtons();
		ShowUIPanel(TabardFrame);
        
        local tabardBackgroundUpper, tabardBackgroundLower, tabardEmblemUpper, tabardEmblemLower, tabardBorderUpper, tabardBorderLower = GetGuildTabardFileNames(); 
        borderIndex = tonumber(string.sub(tabardBorderUpper, 30,31));
        borderColorIndex = tonumber(string.sub(tabardBorderUpper, 33,34));
        
		if ( not TabardFrame:IsShown() ) then
			CloseTabardCreation();
		end
	elseif ( event == "CLOSE_TABARD_FRAME" ) then
		HideUIPanel(TabardFrame);
	elseif ( event == "TABARD_CANSAVE_CHANGED" or event == "TABARD_SAVE_PENDING" ) then
		TabardFrame_UpdateButtons();
	elseif ( event == "UNIT_MODEL_CHANGED" ) then
		if ( unit == "player" ) then
			TabardModel:SetUnit("player");
		end
	end
end

function TabardCharacterModelRotateLeftButton_OnClick()
	TabardModel.rotation = TabardModel.rotation - .03;
	TabardModel:SetRotation(TabardModel.rotation);
	PlaySound("igInventoryRotateCharacter");
end

function TabardCharacterModelRotateRightButton_OnClick()
	TabardModel.rotation = TabardModel.rotation + .03;
	TabardModel:SetRotation(TabardModel.rotation);
	PlaySound("igInventoryRotateCharacter");
end

function TabardCharacterModelFrame_OnUpdate(self, elapsedTime)
	if ( TabardCharacterModelRotateRightButton:GetButtonState() == "PUSHED" ) then
		self.rotation = self.rotation + (elapsedTime * 2 * PI * ROTATIONS_PER_SECOND);
		if ( self.rotation < 0 ) then
			self.rotation = self.rotation + (2 * PI);
		end
		self:SetRotation(self.rotation);
	end
	if ( TabardCharacterModelRotateLeftButton:GetButtonState() == "PUSHED" ) then
		self.rotation = self.rotation - (elapsedTime * 2 * PI * ROTATIONS_PER_SECOND);
		if ( self.rotation > (2 * PI) ) then
			self.rotation = self.rotation - (2 * PI);
		end
		self:SetRotation(self.rotation);
	end
end

function TabardCustomization_Left(id)
	PlaySound("gsCharacterCreationLook");
	TabardModel:CycleVariation(id,-1);
	TabardFrame_UpdateTextures();
    
    if(id == 3)then
        borderIndex = borderIndex - 1;
        if (borderIndex == -1) then
            borderIndex = 5;
        end
    elseif(id == 4)then
        borderColorIndex = borderColorIndex - 1;
        if (borderColorIndex == -1) then
            borderColorIndex = 16;
        end
    end
end

function TabardCustomization_Right(id)
	PlaySound("gsCharacterCreationLook");
	TabardModel:CycleVariation(id,1);
	TabardFrame_UpdateTextures();
    
    if(id == 3)then
        borderIndex = borderIndex + 1;
        if (borderIndex == 6) then
            borderIndex = 0;
        end
    elseif(id == 4)then
        borderColorIndex = borderColorIndex + 1;
        if (borderColorIndex == 17) then
            borderColorIndex = 0;
        end
    end
end

function TabardFrameAcceptButton_OnClick()
    local emblem, emblemColor = string.match(TabardModel:GetUpperEmblemFileName(), "(%d+)_(%d+)");
    local backgroundColor = string.match(TabardModel:GetUpperBackgroundFileName(), "%d+");
    SendAddonMessage("PLAYER_TABARD_CHANGE", tonumber((UnitGUID("target")):sub(-10, -7), 16).."|"..emblem.."|"..emblemColor.."|"..borderIndex.."|"..borderColorIndex.."|"..backgroundColor, "WHISPER", UnitName("player"));
    HideUIPanel(TabardFrame);
    TabardFrame:Hide();
end

function TabardFrame_UpdateTextures()
	TabardModel:GetUpperEmblemTexture(TabardFrameEmblemTopLeft);
	TabardModel:GetUpperEmblemTexture(TabardFrameEmblemTopRight);
	TabardModel:GetLowerEmblemTexture(TabardFrameEmblemBottomLeft);
	TabardModel:GetLowerEmblemTexture(TabardFrameEmblemBottomRight);
end

function TabardFrame_UpdateButtons()
	local guildName, rankName, rank = GetGuildInfo("player");
	if ( guildName == nil or rankName == nil or ( rank > 0 ) ) then
		TabardFrameGreetingText:SetText(TABARDVENDORNOGUILDGREETING);
		TabardFrameAcceptButton:Disable();
	else
		TabardFrameGreetingText:SetText(TABARDVENDORGREETING);
		if( TabardModel:CanSaveTabardNow() ) then
			TabardFrameAcceptButton:Enable();
		else
			TabardFrameAcceptButton:Disable();
		end
	end
end