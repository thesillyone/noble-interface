CHARACTER_FACING_INCREMENT = 2;
MAX_RACES = 23;
MAX_CLASSES_PER_RACE = 10;
NUM_CHAR_CUSTOMIZATIONS = 5;
MIN_CHAR_NAME_LENGTH = 2;
CHARACTER_CREATE_ROTATION_START_X = nil;
CHARACTER_CREATE_INITIAL_FACING = nil;
NUM_PREVIEW_FRAMES = 14;
CLASSLESS_REALM = true
CUSTOM_CLASS_REALM_STRING = "Development"
DEV_REALM_STRING = "Development"
DEV_REALM = false
IS_ZOOMED = false
local featureIndex = 1
local FeatureType = 1

--local RADIUS = 400
--local ANGLE = 10
--local START_ANGLE = 127.5
--local START_ANGLE_BACK = 42.5

local RADIUS = 350
local ANGLE = 180/14
local START_ANGLE = (90+ANGLE)+(ANGLE/2)
local START_ANGLE_BACK = 90-(ANGLE*2)-(ANGLE/2)

local X_SQUISH = 1.2
local Y_SQUISH = 1.05

PAID_CHARACTER_CUSTOMIZATION = 1;
PAID_RACE_CHANGE = 3;
PAID_FACTION_CHANGE = 2;
PAID_SERVICE_CHARACTER_ID = nil;
PAID_SERVICE_TYPE = nil;

PREVIEW_FRAME_HEIGHT = 130;
PREVIEW_FRAME_X_OFFSET = 19;
PREVIEW_FRAME_Y_OFFSET = -7;

FACTION_BACKDROP_COLOR_TABLE = {
	["Alliance"] = {0.5, 0.5, 0.5, 0.09, 0.09, 0.19, 0, 0, 0.2, 0.29, 0.33, 0.91},
	["Horde"] = {0.5, 0.2, 0.2, 0.19, 0.05, 0.05, 0.2, 0, 0, 0.90, 0.05, 0.07},
	["Player"] = {0.2, 0.5, 0.2, 0.05, 0.2, 0.05, 0.05, 0.2, 0.05, 1, 1, 1},
};
FRAMES_TO_BACKDROP_COLOR = {
	"CharacterCreateCharacterRace",
	"CharacterCreateCharacterClass",
--	"CharacterCreateCharacterFaction",
	"CharacterCreateNameEdit",
};
RACE_ICON_TCOORDS = {
	["HUMAN_MALE"]		= {0, 0.0625, 0, 0.25},
	["DWARF_MALE"]		= {0, 0.0625, 0.25, 0.5},
	["NIGHTELF_MALE"]	= {0, 0.0625, 0.5, 0.75},
	["GNOME_MALE"]		= {0, 0.0625, 0.75, 1.0},

	["HUMAN_FEMALE"]	= {0.0625, 0.125, 0, 0.25},
	["DWARF_FEMALE"]	= {0.0625, 0.125, 0.25, 0.5},
	["NIGHTELF_FEMALE"]	= {0.0625, 0.125, 0.5, 0.75},
	["GNOME_FEMALE"]	= {0.0625, 0.125, 0.75, 1.0},

	["DRAENEI_MALE"]	= {0.125, 0.1875, 0, 0.25},
	["DRAENEI_FEMALE"]	= {0.1875, 0.25, 0, 0.25},

	["BLOODELF_MALE"]	= {0.125, 0.1875, 0.25, 0.5},
	["BLOODELF_FEMALE"]	= {0.1875, 0.25, 0.25, 0.5},

	["NIGHTBORNE_MALE"]   = {0.125, 0.1875, 0.5, 0.75},
	["NIGHTBORNE_FEMALE"] = {0.1875, 0.25, 0.5, 0.75},

	["DARKIRONDWARF_MALE"] = {0.125, 0.1875, 0.75, 1.0},
	["DARKIRONDWARF_FEMALE"] = {0.1875, 0.25, 0.75, 1.0},

	["NAGA_MALE"]	= {0.25, 0.3125, 0, 0.25},
	["NAGA_FEMALE"]	= {0.3125, 0.375, 0, 0.25},

	["NIGHTELFN_MALE"]	 	= {0.25, 0.3125, 0.25, 0.5},
	["NIGHTELFN_FEMALE"]	= {0.3125, 0.375, 0.25, 0.5},

	["HUMANN_MALE"]	 	= {0.25, 0.3125, 0.5, 0.75},
	["HUMANN_FEMALE"]	= {0.3125, 0.375, 0.5, 0.75},
	
	["BLOODELFN_MALE"]	= {0.25, 0.3125, 0.75, 1.0},
	["BLOODELFN_FEMALE"]	= {0.3125, 0.375, 0.75, 1.0},
	
	["UPRIGHT_MALE"]		= {0.625, 0.6875, 0.5, 0.75},
	["UPRIGHT_FEMALE"]		= {0.6875, 0.75, 0.5, 0.75},

	["ORC_MALE"]		= {0.375, 0.4375, 0, 0.25},
	["SCOURGE_MALE"]	= {0.375, 0.4375, 0.25, 0.5},
	["TAUREN_MALE"]		= {0.375, 0.4375, 0.5, 0.75},
	["TROLL_MALE"]		= {0.375, 0.4375, 0.75, 1.0},


	["ORC_FEMALE"]		= {0.4375, 0.5, 0, 0.25},
	["SCOURGE_FEMALE"]	= {0.4375, 0.5, 0.25, 0.5},
	["TAUREN_FEMALE"]	= {0.4375, 0.5, 0.5, 0.75},
	["TROLL_FEMALE"]	= {0.4375, 0.5, 0.75, 1.0},

	["ZANDALARITROLL_MALE"]	= {0.5, 0.5625, 0, 0.25},
	["VOIDELF_MALE"]	= {0.5, 0.5625, 0.25, 0.5},
	["GOBLIN_MALE"]		= {0.5, 0.5625 ,0.5, 0.75},
	["VULPERA_MALE"]    = {0.5, 0.5625, 0.75, 1.0},

	["ZANDALARITROLL_FEMALE"]	= {0.5625, 0.625,  0, 0.25},
	["VOIDELF_FEMALE"]	= {0.5625, 0.625, 0.25, 0.5},
	["GOBLIN_FEMALE"]	= {0.5625, 0.625, 0.5, 0.75},
	["VULPERA_FEMALE"]  = {0.5625, 0.625, 0.75, 1.0},

	["PANDAREN_MALE"]	= {0.625, 0.6875,  0, 0.25},
	["WORGEN_MALE"]	    = {0.625, 0.6875, 0.25, 0.5},

	["PANDAREN_FEMALE"]	= {0.6875, 0.75,  0, 0.25},
	["WORGEN_FEMALE"]	= {0.6875, 0.75, 0.25, 0.5},




};
CLASS_ICON_TCOORDS = {
	["WARRIOR"]	= {0, 0.25, 0, 0.25},
	["MAGE"]	= {0.25, 0.49609375, 0, 0.25},
	["ROGUE"]	= {0.49609375, 0.7421875, 0, 0.25},
	["DRUID"]	= {0.7421875, 0.98828125, 0, 0.25},
	["HUNTER"]	= {0, 0.25, 0.25, 0.5},
	["SHAMAN"]	= {0.25, 0.49609375, 0.25, 0.5},
	["PRIEST"]	= {0.49609375, 0.7421875, 0.25, 0.5},
	["WARLOCK"]	= {0.7421875, 0.98828125, 0.25, 0.5},
	["PALADIN"]	= {0, 0.25, 0.5, 0.75},
	["DEATHKNIGHT"]	= {0.25, 0.49609375, 0.5, 0.75},
};

BANNER_DEFAULT_TEXTURE_COORDS = {0.109375, 0.890625, 0.201171875, 0.80078125};
BANNER_DEFAULT_SIZE = {200, 308};

CHAR_CUSTOMIZE_HAIR_COLOR = 4;

function CustomSliderOnUpdate(self)
	if not(self.centerX) then
		self.centerX = self:GetCenter()
		self.centerX = math.floor(self.centerX)
	end

	local sx = self:GetCenter()
	local _, _, _, x = self:GetPoint()

	if (self.IsMoving) then
		self.startMoveTime = self.startMoveTime + 1
		local px, py = GetCursorPosition()
		--px = px + 76

		local toMove = (math.floor((px-sx)/10))

		if (math.abs(self.centerX-(sx+toMove)) < self.sliderLength) then
			self:SetPoint("CENTER", x+toMove, 0)
		end

		if (self.startMoveTime) >= self.speed then
			if (math.floor(sx) > self.centerX) then
				CharacterCustomization_Right(self:GetParent():GetID());
			else
				CharacterCustomization_Left(self:GetParent():GetID());
			end

			self.startMoveTime = 0
		end
 
	elseif (math.floor(sx) ~= self.centerX) then
		local toMove = ((self.centerX-sx)/10)
		self:SetPoint("CENTER", x+toMove, 0)
	end
end

local function HandleFactionBackground()

	local name, faction = GetFactionForRace(CharacterCreate.selectedRace);

	SetBackgroundModel(CharacterCreate, string.upper(faction));
	IS_ZOOMED = false
	--SetBackgroundModel(CharacterCreate, string.upper(faction));
end

local function SetFaceCustomizeCamera(flag)
	local race, fileString = GetNameForRace();
	if (strupper(fileString) == "DARKIRONDWARF") then
		fileString = "Dwarf";
	end
	if (strupper(fileString) == "VULPERA") then
		fileString = "Goblin";
	end
	if (strupper(fileString) == "NIGHTELFN") then
		fileString = "Nightelf";
	end
	if (strupper(fileString) == "VOIDELF") then
		fileString = "Bloodelf";
	end
	if (strupper(fileString) == "BLOODELFN") then
		fileString = "Bloodelf";
	end
	if (strupper(fileString) == "UPRIGHT") then
		fileString = "Orc";
	end
	if (strupper(fileString) == "WORGEN") then
		fileString = "Human";
	end
	if (strupper(fileString) == "HUMANN") then
		fileString = "Human";
	end
	if (strupper(fileString) == "NIGHTBORNE") then
		fileString = "Nightelf";
	end

	if (flag) and not(IS_ZOOMED) then
		if (strupper(fileString) == "NAGA") then
			fileString = "Kultiran";
		end
		if (strupper(fileString) == "ZANDALARITROLL") then
			fileString = "Zandalar";
		end
		SetBackgroundModel(CharacterCreate, string.upper(fileString).."_ZOOM");
		IS_ZOOMED = true
	elseif not(flag) and (IS_ZOOMED) then
		if (strupper(fileString) == "PANDAREN") then
			fileString = "Goblin";
		end
		if (strupper(fileString) == "NAGA") then
			fileString = "Human";
		end
		SetBackgroundModel(CharacterCreate, string.upper(fileString));
		IS_ZOOMED = false
	end
end

local function CalcPos(fi, radius)
	return radius*cos(fi)*X_SQUISH, radius*sin(fi)*Y_SQUISH
end

--[[local function CharCreationNameCheck()
	if (CharacterCreateNameEdit:GetText() ~= "") then
		CharCreateOkayButton:Enable()
	else
		CharCreateOkayButton:Disable()
	end
end]]--

function CharacterCreate_OnLoad(self)
	self:RegisterEvent("RANDOM_CHARACTER_NAME_RESULT");
	self:RegisterEvent("GLUE_UPDATE_EXPANSION_LEVEL");

	self:SetSequence(0);
	self:SetCamera(0);

	CharacterCreate.numRaces = 0;
	CharacterCreate.selectedRace = 0;
	CharacterCreate.numClasses = 0;
	CharacterCreate.selectedClass = 0;
	CharacterCreate.selectedGender = 0;

	SetCharCustomizeFrame("CharacterCreate");

	for i=1, NUM_CHAR_CUSTOMIZATIONS, 1 do
		_G["CharCreateCustomizationButton"..i].text:SetText(_G["CHAR_CUSTOMIZATION"..i.."_DESC"]);
	end

	-- Color edit box backdrop
	local backdropColor = FACTION_BACKDROP_COLOR_TABLE["Alliance"];
	CharacterCreateNameEdit:SetBackdropBorderColor(backdropColor[1], backdropColor[2], backdropColor[3]);
	CharacterCreateNameEdit:SetBackdropColor(backdropColor[4], backdropColor[5], backdropColor[6]);
	--[[CharacterCreateNameEdit:SetParent(CharacterCreateFrame)
	CharacterCreateNameEdit:SetPoint("TOPLEFT", CharacterCreateFrame, 635, -30)]]--
	CharCreateCustomizationFrame:SetPoint("RIGHT", CharacterCreateFrame, -50, -10)

	CharacterCreateFrame.state = "CLASSRACE";

	CharCreatePreviewFrame.previews = { };

	-- custom Lua
	_G["CharCreateMaleButtonNormalTexture"]:SetDrawLayer("BACKGROUND")
	_G["CharCreateFemaleButtonNormalTexture"]:SetDrawLayer("BACKGROUND")
	_G["CharCreateMaleButtonPushedTexture"]:SetDrawLayer("BACKGROUND")
	_G["CharCreateFemaleButtonPushedTexture"]:SetDrawLayer("BACKGROUND")
	_G["CharCreateRandomizeButtonNormalTexture"]:SetDrawLayer("BACKGROUND")
	_G["CharCreateRandomizeButtonPushedTexture"]:SetDrawLayer("BACKGROUND")
	--CharCreateMaleButton:Hide()
	--CharCreateFemaleButton:Hide()

	CustomizationBG = CharacterCreateFrame:CreateTexture("CustomizationBG", "BACKGROUND")
	CustomizationBG:SetSize(512, GlueParent:GetHeight())
    CustomizationBG:SetTexture("Interface\\Glues\\CharacterCreate\\Shadowv")
    CustomizationBG:SetPoint("RIGHT")
    CustomizationBG:Hide()

    CharacterCreateFrameFade = CreateFrame("FRAME", "CharacterCreateFrameFade", CharacterCreateFrame)
    CharacterCreateFrameFade:SetPoint("CENTER", 0, 0)
    CharacterCreateFrameFade:SetSize(GlueParent:GetWidth(), GlueParent:GetHeight())
    CharacterCreateFrameFade:SetFrameStrata("DIALOG")
    CharacterCreateFrameFade:SetFrameLevel(10)
    --CharacterCreateFrameFade:Hide()

    --[[CharacterCreateTopNavi = CreateFrame("FRAME", "CharacterCreateTopNavi", CharacterCreateFrame)
    CharacterCreateTopNavi:SetPoint("BOTTOM", 0, 4)
    CharacterCreateTopNavi:SetSize(GlueParent:GetWidth(), 128)

    CharCreateBackButton:Hide()
	CharCreateOkayButton:Hide()

	CharCreateBackButtonTopNavi = CreateFrame("Button", "CharCreateBackButtonTopNavi", CharacterCreateTopNavi, "CharCreateNavButtonTemplate")
	CharCreateBackButtonTopNavi:SetPoint("BOTTOMLEFT", 54, -6)
	CharCreateBackButtonTopNavi:SetText(BACK)
	CharCreateBackButtonTopNavi:SetScript("OnClick", function(self)
		CharCreateBackButton:GetScript("OnClick")(CharCreateBackButton)
	end)

	CharCreateOkayButtonTopNavi = CreateFrame("Button", "CharCreateOkayButtonTopNavi", CharacterCreateTopNavi, "CharCreateNavButtonTemplate")
	CharCreateOkayButtonTopNavi:SetPoint("BOTTOMRIGHT", -52, -6)
	CharCreateOkayButtonTopNavi:SetText("Customize")
	CharCreateOkayButtonTopNavi:SetScript("OnClick", function(self)
		CharCreateOkayButton:GetScript("OnClick")(CharCreateOkayButton)
	end)

	CharacterCreateTopNaviBG = CharacterCreateTopNavi:CreateTexture("CharacterCreateTopNaviBG", "BACKGROUND")
	CharacterCreateTopNaviBG:SetSize(1360, 85)
    CharacterCreateTopNaviBG:SetTexture("Interface\\Glues\\CharacterCreate\\TopNavi")
    CharacterCreateTopNaviBG:SetPoint("BOTTOM")
    CharacterCreateTopNaviBG:SetTexCoord(1,0,1,0)

	CharacterCreateTopNavi.Text = CharacterCreateTopNavi:CreateFontString("CharacterCreateTopNavi.Text", "OVERLAY")
    CharacterCreateTopNavi.Text:SetFontObject(GlueFontNormal)
    CharacterCreateTopNavi.Text:SetFont("Fonts\\FRIZQT__.TTF", 16)
    CharacterCreateTopNavi.Text:SetText("CHARACTER CREATION - |cffFFFFFFSELECT RACE/CLASS|r")
    CharacterCreateTopNavi.Text:SetPoint("BOTTOM", 0, 8)]]--

    --CharacterCreateTopNavi:SetFrameStrata("DIALOG")
    --CharacterCreateTopNavi:SetFrameLevel(10)

	CustomizationBG2 = CharacterCreateFrame:CreateTexture("CustomizationBG2", "BACKGROUND")
	CustomizationBG2:SetSize(GlueParent:GetWidth(), GlueParent:GetHeight())
    CustomizationBG2:SetTexture("Interface\\Glues\\CharacterCreate\\MainShadow")
    CustomizationBG2:SetPoint("CENTER")
    CustomizationBG2:SetAlpha(1)

    CustomizationBGAddRight = CharacterCreateFrame:CreateTexture("CustomizationBGAddRight", "BACKGROUND")
	CustomizationBGAddRight:SetSize(300, GlueParent:GetHeight())
    CustomizationBGAddRight:SetTexture("Interface\\Glues\\CharacterCreate\\Shadowv")
    CustomizationBGAddRight:SetPoint("RIGHT")
    CustomizationBGAddRight:SetAlpha(1)

    CustomizationBGAddRight = CharacterCreateFrame:CreateTexture("CustomizationBGAddRight2", "BACKGROUND")
	CustomizationBGAddRight:SetSize(300, GlueParent:GetHeight())
    CustomizationBGAddRight:SetTexture("Interface\\Glues\\CharacterCreate\\Shadowv")
    CustomizationBGAddRight:SetPoint("RIGHT")
    CustomizationBGAddRight:SetAlpha(1)

    CustomizationBGAddLeft = CharacterCreateFrame:CreateTexture("CustomizationBGAddLeft", "BACKGROUND")
	CustomizationBGAddLeft:SetSize(300, GlueParent:GetHeight())
    CustomizationBGAddLeft:SetTexture("Interface\\Glues\\CharacterCreate\\Shadowv")
    CustomizationBGAddLeft:SetPoint("LEFT")
    CustomizationBGAddLeft:SetTexCoord(1, 0, 1, 0)
    CustomizationBGAddLeft:SetAlpha(1)

	CharacterCreateFrameFadeBG = CharacterCreateFrameFade:CreateTexture("CharacterCreateFrameFadeBG", "OVERLAY")
	CharacterCreateFrameFadeBG:SetSize(GlueParent:GetWidth(), GlueParent:GetHeight())
    CharacterCreateFrameFadeBG:SetTexture("Interface\\Glues\\CharacterCreate\\Black")
    CharacterCreateFrameFadeBG:SetPoint("CENTER")

-- Sasha - убираем логотип и текст фракций
--	CustomizationLogoAlliance = CharacterCreateFrame:CreateTexture("CustomizationLogoAlliance", "ARTWORK")
--	CustomizationLogoAlliance:SetSize(100, 100)
--    CustomizationLogoAlliance:SetTexture("Interface\\Glues\\CharacterCreate\\AllianceLogo")
--    CustomizationLogoAlliance:SetPoint("TOPLEFT", -16, 16)
--
--	CustomizationTextAlliance = CharacterCreateFrame:CreateFontString("CustomizationTextAlliance", "OVERLAY")
--    CustomizationTextAlliance:SetFontObject(GlueFontNormal)
--    CustomizationTextAlliance:SetFont("Fonts\\FRIZQT__.TTF", 16)
--    CustomizationTextAlliance:SetText(string.upper(ALLIANCE))
--    CustomizationTextAlliance:SetPoint("LEFT", CustomizationLogoAlliance, "RIGHT", -24, 0)
--
--	CustomizationLogoHorde = CharacterCreateFrame:CreateTexture("CustomizationLogoHorde", "ARTWORK")
--	CustomizationLogoHorde:SetSize(100, 100)
--    CustomizationLogoHorde:SetTexture("Interface\\Glues\\CharacterCreate\\HordeLogo")
--    CustomizationLogoHorde:SetPoint("TOPRIGHT", 16, 16)
--
--	CustomizationTextHorde = CharacterCreateFrame:CreateFontString("CustomizationTextHorde", "OVERLAY")
--    CustomizationTextHorde:SetFontObject(GlueFontNormal)
--    CustomizationTextHorde:SetFont("Fonts\\FRIZQT__.TTF", 16)
--    CustomizationTextHorde:SetText(string.upper(HORDE))
--    CustomizationTextHorde:SetPoint("RIGHT", CustomizationLogoHorde, "LEFT", 24, 0)

	--[[CustomizationLogoClass = CharacterCreateFrame:CreateTexture("CustomizationLogoClass", "ARTWORK")
	CustomizationLogoClass:SetSize(100, 100)
    --CustomizationLogoClass:SetTexture("Interface\\Glues\\CharacterCreate\\ClassLogo")
    CustomizationLogoClass:SetPoint("TOP", -16, 16)

	CustomizationTextClass = CharacterCreateFrame:CreateFontString("CustomizationTextClass", "OVERLAY")
    CustomizationTextClass:SetFontObject(GlueFontHighlight)
    CustomizationTextClass:SetFont("Fonts\\FRIZQT__.TTF", 16)
    CustomizationTextClass:SetText(string.upper("class"))
    CustomizationTextClass:SetPoint("CENTER", CustomizationLogoClass, "RIGHT", -24, 0)]]--

-- Sasha - убираем полосу снизу и сверху
--	CustomizationLineBottom = CharacterCreateFrame:CreateTexture("CustomizationLineBottom", "ARTWORK")
--	CustomizationLineBottom:SetSize(GlueParent:GetWidth(), 96)
--    CustomizationLineBottom:SetTexture("Interface\\Glues\\CharacterCreate\\bottomline")
--    CustomizationLineBottom:SetPoint("BOTTOM", 0, 0)
--
--	CustomizationLineTop = CharacterCreateFrame:CreateTexture("CustomizationLineTop", "ARTWORK")
--	CustomizationLineTop:SetSize(GlueParent:GetWidth(), 96)
--    CustomizationLineTop:SetTexture("Interface\\Glues\\CharacterCreate\\bottomline")
--    CustomizationLineTop:SetPoint("TOP", 0, 0)
--    CustomizationLineTop:SetTexCoord(1,0,1,0)

    --CharacterCreateNameEdit:SetScript("OnTextChanged", CharCreationNameCheck)
    --GlueFrameFadeOut(CharacterCreateFrameFade, 0.5)
end

function CharCustomizeButtonClick(id, button)
	if (button == 'LeftButton') then
		for i = 1, math.random(1, 5) do
			CharacterCustomization_Left(id)
		end
	elseif (button == 'RightButton') then
		for i = 1, math.random(1, 5) do
			CharacterCustomization_Right(id)
		end
	end

	if (id > 1) then
		SetFaceCustomizeCamera(true)
	else
		SetFaceCustomizeCamera(false)
	end

	-- CycleCharCustomization(id, 1);
	--[[FeatureType = id
	for i=1,5 do
		_G["CharCreateCustomizationButton"..i]:SetChecked(0);
	end
	_G["CharCreateCustomizationButton"..id]:SetChecked(1);]]

end

function CharacterCreate_OnShow()
	local realmName = GetCVar("realmname")

	if (string.find(string.lower(realmName), string.lower(CUSTOM_CLASS_REALM_STRING))) then
		CLASSLESS_REALM = false
	else
		CLASSLESS_REALM = true
	end

	if (string.find(string.lower(realmName), string.lower(DEV_REALM_STRING))) then
		DEV_REALM = true
	else
		DEV_REALM = false
	end

	for i=1, MAX_CLASSES_PER_RACE, 1 do
		local button = _G["CharCreateClassButton"..i];
		button:Enable();
		--button:SetScale(0.8)
		SetButtonDesaturated(button, false)
	end

	for i=1, MAX_RACES, 1 do
		local button = _G["CharCreateRaceButton"..i];
		button:Enable();
		--button:SetScale(0.8)
		SetButtonDesaturated(button, false)
	end

	if ( PAID_SERVICE_TYPE ) then
		CustomizeExistingCharacter( PAID_SERVICE_CHARACTER_ID );
		CharacterCreateNameEdit:SetText( PaidChange_GetName() );
	else
		--randomly selects a combination
		ResetCharCustomize();
		CharacterCreateNameEdit:SetText("");
		CharCreateRandomizeButton:Show();
	end

	CharacterCreateEnumerateRaces(GetAvailableRaces());
	SetCharacterRace(GetSelectedRace());
	HandleFactionBackground()
	GlueFrameFadeOut(CharacterCreateFrameFade, 0.5)

	CharacterCreateEnumerateClasses(GetAvailableClasses());

	local_,_,index = GetSelectedClass();
	SetCharacterClass(index);

	SetCharacterGender(GetSelectedSex());
	--end

	-- Hair customization stuff
	CharacterCreate_UpdateHairCustomization();
	SetCharacterCreateFacing(-15);

	-- setup customization
	CharacterChangeFixup();

	--SetFaceCustomizeCamera(false);
end

function CharacterCreate_OnHide()
	PAID_SERVICE_CHARACTER_ID = nil;
	PAID_SERVICE_TYPE = nil;
	if ( CharacterCreateFrame.state == "CUSTOMIZATION" ) then
		CharacterCreate_Back();
	end
	-- character previews will need to be redone if coming back to character create. One reason is all the memory used for
	-- tracking the frames (on the c side) will get released if the user returns to the login screen
	CharCreatePreviewFrame.rebuildPreviews = true;
end

function CharacterCreate_OnEvent(event, arg1, arg2, arg3)
	if ( event == "RANDOM_CHARACTER_NAME_RESULT" ) then
		if ( arg1 == 0 ) then
			-- Failed.  Generate a random name locally.
			CharacterCreateNameEdit:SetText(GenerateRandomName());
		else
			-- Succeeded.  Use what the server sent.
			CharacterCreateNameEdit:SetText(arg2);
		end
		CharCreateOkayButton:Enable();
		PlaySound("gsCharacterCreationLook");
	elseif ( event == "GLUE_UPDATE_EXPANSION_LEVEL" ) then
		-- Expansion level changed while online, so enable buttons as needed
		if ( CharacterCreateFrame:IsShown() ) then
			CharacterCreateEnumerateRaces(GetAvailableRaces());
			CharacterCreateEnumerateClasses(GetAvailableClasses());
		end
	end
end

function CharacterCreateFrame_OnMouseDown(button)
	if ( button == "LeftButton" ) then
		CHARACTER_CREATE_ROTATION_START_X = GetCursorPosition();
		CHARACTER_CREATE_INITIAL_FACING = GetCharacterCreateFacing();
	end
end

function CharacterCreateFrame_OnMouseUp(button)
	if ( button == "LeftButton" ) then
		CHARACTER_CREATE_ROTATION_START_X = nil
	end
end

function CharacterCreateFrame_OnUpdate(self, elapsed)
	if ( CHARACTER_CREATE_ROTATION_START_X ) then
		local x = GetCursorPosition();
		local diff = (x - CHARACTER_CREATE_ROTATION_START_X) * CHARACTER_ROTATION_CONSTANT;
		CHARACTER_CREATE_ROTATION_START_X = GetCursorPosition();
		SetCharacterCreateFacing(GetCharacterCreateFacing() + diff);
		CharCreate_RotatePreviews();
	end
	CharacterCreateWhileMouseDown_Update(elapsed);
end

function CharacterCreateEnumerateRaces(...)
	CharacterCreate.numRaces = select("#", ...)/3;
	if ( CharacterCreate.numRaces > MAX_RACES ) then
		message("Too many races!  Update MAX_RACES");
		return;
	end
	local coords;
	local index = 1;
	local button;
	local gender;
	local selectedSex = GetSelectedSex();
	if ( selectedSex == SEX_MALE ) then
		gender = "MALE";
	else
		gender = "FEMALE";
	end
	for i=1, select("#", ...), 3 do
		local name = select(i, ...);
		local unlocalizedname = strupper(select(i+1, ...))

		coords = RACE_ICON_TCOORDS[strupper(select(i+1, ...).."_"..gender)];
		_G["CharCreateRaceButton"..index.."NormalTexture"]:SetDrawLayer("BACKGROUND")
		_G["CharCreateRaceButton"..index.."PushedTexture"]:SetDrawLayer("BACKGROUND")
		
		_G["CharCreateRaceButton"..index.."NormalTexture"]:SetTexCoord(coords[1], coords[2], coords[3], coords[4]);
		_G["CharCreateRaceButton"..index.."PushedTexture"]:SetTexCoord(coords[1], coords[2], coords[3], coords[4]);
		button = _G["CharCreateRaceButton"..index];
		if ( not button  ) then
			return;
		end

		local _, faction = GetFactionForRace(button:GetID());

		if faction == nil then
			faction = "Alliance";
		end

		local backdropColor = FACTION_BACKDROP_COLOR_TABLE[faction];
--		Sasha: Подсветка фракции на окошке расы не нужна, но оставлю как пример кода
--		if (faction == "Alliance") then
--			button.shadowR:SetVertexColor(backdropColor[10], backdropColor[11], backdropColor[12]);
--			button.shadowR:SetAlpha(0.6)
--			button.shadowL:Hide()
--		else
--			button.shadowL:SetVertexColor(backdropColor[10], backdropColor[11], backdropColor[12]);
--			button.shadowL:SetAlpha(0.6)
--			button.shadowR:Hide()
--		end

--		Sasha: имя расы тоже не нужно
--		button.nameFrame.text:SetText(name);

		if ( select(i+2, ...) == 1 ) then
			button:Enable();
			SetButtonDesaturated(button);
			button.name = name;
			button.tooltip = name;
		else
			button:Disable();
			SetButtonDesaturated(button, 1);
			button.name = name;
			local disabledReason = _G[strupper(select(i+1, ...).."_".."DISABLED")];
			if ( disabledReason ) then
				button.tooltip = name.."|n"..disabledReason;
			else
				button.tooltip = nil;
			end
		end

		local abilityIndex = 1;
		local tempText = _G["ABILITY_INFO_"..unlocalizedname..abilityIndex];
		abilityText = "";
		while ( tempText ) do
			abilityText = abilityText..tempText.."\n\n";
			abilityIndex = abilityIndex + 1;
			tempText = _G["ABILITY_INFO_"..unlocalizedname..abilityIndex];
		end

		text = GetFlavorText("RACE_INFO_"..unlocalizedname, gender) -- SASHA
		button.tooltip = "|cffFFFFFF"..button.tooltip.."|r\n\n"..text
		button.tooltip = button.tooltip.."\n\n|cffFFFFFF"..abilityText


		index = index + 1;
	end
	for i=CharacterCreate.numRaces + 1, MAX_RACES, 1 do
		_G["CharCreateRaceButton"..i]:Hide();
	end
end

function CharacterCreateEnumerateClasses(...)
	CharacterCreate.numClasses = select("#", ...)/3;
	if ( CharacterCreate.numClasses > MAX_CLASSES_PER_RACE ) then
		message("Too many classes!  Update MAX_CLASSES_PER_RACE");
		return;
	end
	local coords;
	local index = 1;
	local button;
	for i=1, select("#", ...), 3 do
		local unlocalizedname = strupper(select(i+1, ...))
		--SetCVar("realmName", strupper(select(i+1, ...)))
		
		coords = CLASS_ICON_TCOORDS[strupper(select(i+1, ...))];
		_G["CharCreateClassButton"..index.."NormalTexture"]:SetTexCoord(coords[1], coords[2], coords[3], coords[4]);
		_G["CharCreateClassButton"..index.."PushedTexture"]:SetTexCoord(coords[1], coords[2], coords[3], coords[4]);
		_G["CharCreateClassButton"..index.."NormalTexture"]:SetDrawLayer("BACKGROUND")
		_G["CharCreateClassButton"..index.."PushedTexture"]:SetDrawLayer("BACKGROUND")
		button = _G["CharCreateClassButton"..index];
		button:Show();

		local name = select(i, ...)
		local btnname = string.gsub(name, " ", "\n", 1)
		button.nameFrame.text:SetText(btnname);
		button.tooltip = ""
		button.tooltip = name
				
		if ( select(i+2, ...) == 1 ) then
			if (IsRaceClassValid(CharacterCreate.selectedRace, index)) then
				button:Enable();
				SetButtonDesaturated(button);
				--button.tooltip = nil;
				-- _G["CharCreateClassButton"..index.."DisableTexture"]:Hide();
			else
				button:Disable();
				SetButtonDesaturated(button, 1);
				--button.tooltip = CLASS_DISABLED;
				_G["CharCreateClassButton"..index.."DisableTexture"]:Show();
			end
		else
			button:Disable();
			SetButtonDesaturated(button, 1);
			--button.tooltip = _G[strupper(select(i+1, ...).."_".."DISABLED")];
			_G["CharCreateClassButton"..index.."DisableTexture"]:Show();
		end

		local abilityIndex = 0;
		local tempText = _G["CLASS_INFO_"..unlocalizedname..abilityIndex];
		abilityText = "";
		while ( tempText ) do
			abilityText = abilityText..tempText.."\n\n";
			abilityIndex = abilityIndex + 1;
			tempText = _G["CLASS_INFO_"..unlocalizedname..abilityIndex];
		end

		button.tooltip = "|cffFFFFFF"..button.tooltip.."\n\n"..abilityText
		button.tooltip = button.tooltip.."\n|r"..GetFlavorText("CLASS_"..strupper(unlocalizedname), "MALE").."|n|n"
		
		index = index + 1;
	end
	for i=CharacterCreate.numClasses + 1, MAX_CLASSES_PER_RACE, 1 do
		_G["CharCreateClassButton"..i]:Hide()
	end

    -- sasha hide DK class
	_G["CharCreateClassButton6"]:Hide()
end


function SetCharacterRace(id)

	CharacterCreate.selectedRace = id;
	for i=1, CharacterCreate.numRaces, 1 do
		local button = _G["CharCreateRaceButton"..i];
		if ( i == id ) then
			button:SetChecked(1);
		else
			button:SetChecked(0);
		end
	end

	local name, faction = GetFactionForRace(CharacterCreate.selectedRace);

	if faction == nil then
		faction = "Alliance";
	end

	-- Set background

	--HandleFactionBackground()

	-- Set backdrop colors based on faction
	local backdropColor = FACTION_BACKDROP_COLOR_TABLE[faction];
	--CharCreateRaceFrame.factionBg:SetGradient("VERTICAL", 0, 0, 0, backdropColor[7], backdropColor[8], backdropColor[9]);
	--CharCreateClassFrame.factionBg:SetGradient("VERTICAL", 0, 0, 0, backdropColor[7], backdropColor[8], backdropColor[9]);
	--CharCreateCustomizationFrame.factionBg:SetGradient("VERTICAL", 0, 0, 0, backdropColor[7], backdropColor[8], backdropColor[9]);
	--harCreatePreviewFrame.factionBg:SetGradient("VERTICAL", 0, 0, 0, backdropColor[7], backdropColor[8], backdropColor[9]);
	CharCreateCustomizationFrameBanner:SetVertexColor(backdropColor[10], backdropColor[11], backdropColor[12]);
	CharacterCreateNameEdit:SetBackdropColor(backdropColor[4], backdropColor[5], backdropColor[6]);
	--CharCreateRaceInfoFrame.factionBg:SetGradient("VERTICAL", 0, 0, 0, backdropColor[7], backdropColor[8], backdropColor[9]);
	--CharCreateClassInfoFrame.factionBg:SetGradient("VERTICAL", 0, 0, 0, backdropColor[7], backdropColor[8], backdropColor[9]);

	-- race info
	local frame = CharCreateRaceInfoFrame;
	local race, fileString = GetNameForRace();
	frame.title:SetText(race);
	fileString = strupper(fileString);
	local gender;
	if ( GetSelectedSex() == SEX_MALE ) then
		gender = "MALE";
	else
		gender = "FEMALE";
	end
	local raceText = _G["RACE_INFO_"..fileString];
	local abilityIndex = 1;
	local tempText = _G["ABILITY_INFO_"..fileString..abilityIndex];
	abilityText = "";
	while ( tempText ) do
		abilityText = abilityText..tempText.."\n\n";
		abilityIndex = abilityIndex + 1;
		tempText = _G["ABILITY_INFO_"..fileString..abilityIndex];
	end
	CharCreateRaceInfoFrameScrollFrameScrollBar:SetValue(0);
	local text
	text = GetFlavorText("RACE_INFO_"..strupper(fileString), GetSelectedSex())
	if not text then
		text = "Not in GlueXML."
	end
	CharCreateRaceInfoFrame.scrollFrame.scrollChild.infoText:SetText(text.."|n|n");
	if ( abilityText and abilityText ~= "" ) then
		CharCreateRaceInfoFrame.scrollFrame.scrollChild.bulletText:SetText(abilityText);
	else
		CharCreateRaceInfoFrame.scrollFrame.scrollChild.bulletText:SetText("");
	end
end

function SetCharacterClass(id)
	CharacterCreate.selectedClass = id;
	for i=1, CharacterCreate.numClasses, 1 do
		local button = _G["CharCreateClassButton"..i];
		if ( i == id ) then
			button:SetChecked(1);
		else
			button:SetChecked(0);
			button.selection:Hide();
		end
	end

	-- class info
	local frame = CharCreateClassInfoFrame;
	local className, classFileName, _, tank, healer, damage = GetSelectedClass();
	local abilityIndex = 0;
	if not classFileName then
		classFileName = "WARRIOR"
	end
	local tempText = _G["CLASS_INFO_"..classFileName..abilityIndex];
	abilityText = "";
	while ( tempText ) do
		abilityText = abilityText..tempText.."\n\n";
		abilityIndex = abilityIndex + 1;
		tempText = _G["CLASS_INFO_"..classFileName..abilityIndex];
	end
	CharCreateClassInfoFrame.title:SetText(className);
	CharCreateClassInfoFrame.scrollFrame.scrollChild.bulletText:SetText(abilityText);
	CharCreateClassInfoFrame.scrollFrame.scrollChild.infoText:SetText(GetFlavorText("CLASS_"..strupper(classFileName), GetSelectedSex()).."|n|n");
	CharCreateClassInfoFrameScrollFrameScrollBar:SetValue(0);
end

function CharacterCreate_OnChar()
end

function CharacterCreate_OnKeyDown(key)
	if ( key == "ESCAPE" ) then
		CharacterCreate_Back();
	elseif ( key == "ENTER" ) then
		CharacterCreate_Forward();
	elseif ( key == "PRINTSCREEN" ) then
		Screenshot();
	end
end

function CharacterCreate_UpdateModel(self)
	UpdateCustomizationScene();
	self:AdvanceTime();
end

function CharacterCreate_Finish()
	PlaySound("gsCharacterCreationCreateChar");

	-- If something disabled this button, ignore this message.
	-- This can happen if you press enter while it's disabled, for example.
	if ( not CharCreateOkayButton:IsEnabled() ) then
		return;
	end

	if ( PAID_SERVICE_TYPE ) then
		GlueDialog_Show("CONFIRM_PAID_SERVICE");
	else
		-- if using templates, pandaren must pick a faction
		local _, faction = GetFactionForRace(CharacterCreate.selectedRace);
		--if ( IsUsingCharacterTemplate() and ( faction ~= "Alliance" and faction ~= "Horde" ) ) then
		--	CharacterTemplateConfirmDialog:Show();
		--else
			CreateCharacter(CharacterCreateNameEdit:GetText());
		--end
	end
end

function CharacterCreate_Back()
	if ( CharacterCreateFrame.state == "CUSTOMIZATION" ) then
		PlaySound("gsCharacterCreationCancel");
		CharacterCreateFrame.state = "CLASSRACE"
		CharCreateClassFrame:Show();
		CharCreateRaceFrame:Show();
		CharCreateMaleButton:Show()
		CharCreateFemaleButton:Show()
		-- CharCreateMoreInfoButton:Show();
		CharCreateCustomizationFrame:Hide();
		CharCreatePreviewFrame:Hide();
		CharCreateOkayButton:SetText(CUSTOMIZE);
		CharCreateOkayButton:Enable()
		CharacterCreateNameEdit:Hide();
		CustomizationBG:Hide()
		CharCreateRandomizeButton:Hide()
--		CustomizationLogoAlliance:Show()
--		CustomizationTextAlliance:Show()
--		CustomizationLogoHorde:Show()
--		CustomizationTextHorde:Show()
		--back to awesome gear
		--SetSelectedPreviewGearType(1);
		return;
	end

	PlaySound("gsCharacterCreationCancel");
	CHARACTER_SELECT_BACK_FROM_CREATE = true;
	SetGlueScreen("charselect");
end

local CharacterCreate_Back_Copy = CharacterCreate_Back

local function CharacterCreate_Back_New()
	GlueFrameFadeIn(CharacterCreateFrameFade, 0.3, function()
		HandleFactionBackground()
		GlueFrameFadeOut(CharacterCreateFrameFade, 0.25)
		CharacterCreate_Back_Copy()
	end)
end

CharacterCreate_Back = CharacterCreate_Back_New

function CharacterCreate_UpdateFacialHairCustomization()
	if ( GetFacialHairCustomization() == "NONE" ) then
		CharacterCustomizationButtonFrame5:Hide();
		--CharCreateRandomizeButton:SetPoint("TOP", "CharacterCustomizationButtonFrame5", "BOTTOM", 0, -5);
	else
		CharacterCustomizationButtonFrame5Text:SetText(_G["FACIAL_HAIR_"..GetFacialHairCustomization()]);
		CharacterCustomizationButtonFrame5:Show();
		--CharCreateRandomizeButton:SetPoint("TOP", "CharacterCustomizationButtonFrame5", "BOTTOM", 0, -5);
	end
end

function CharacterCreate_UpdateHairCustomization()
	if not _G["HAIR_"..GetHairCustomization().."_STYLE"] or _G["HAIR_"..GetHairCustomization().."_STYLE"] == "" then
		CharCreateCustomizationButton3:Hide()
		CharCreateCustomizationButton4:SetPoint("TOP", CharCreateCustomizationButton2, "BOTTOM", 0, -20)
	else
		CharCreateCustomizationButton3:Show()
		CharCreateCustomizationButton3.text:SetText(_G["HAIR_"..GetHairCustomization().."_STYLE"])
		--CharCreateCustomizationButton4:SetPoint("TOP", CharCreateCustomizationButton3, "BOTTOM", 0, -20)
	end

	if not _G["HAIR_"..GetHairCustomization().."_COLOR"] or _G["HAIR_"..GetHairCustomization().."_COLOR"] == "" then
		CharCreateCustomizationButton4:Hide()
		if CharCreateCustomizationButton3:IsShown() then
			CharCreateCustomizationButton5:SetPoint("TOP", CharCreateCustomizationButton4, "BOTTOM", 0, 0)
		else
			CharCreateCustomizationButton5:SetPoint("TOP", CharCreateCustomizationButton3, "BOTTOM", 0, 0)
		end
	else
		CharCreateCustomizationButton4:Show()
		CharCreateCustomizationButton4.text:SetText(_G["HAIR_"..GetHairCustomization().."_COLOR"])
		CharCreateCustomizationButton5:SetPoint("TOP", CharCreateCustomizationButton4, "BOTTOM", 0, 0)
	end

	if not _G["FACIAL_HAIR_"..GetFacialHairCustomization()] or _G["FACIAL_HAIR_"..GetFacialHairCustomization()] == "" then
		CharCreateCustomizationButton5:Hide()
	else
		CharCreateCustomizationButton5:Show()
		CharCreateCustomizationButton5.text:SetText(_G["FACIAL_HAIR_"..GetFacialHairCustomization()])
	end

end

function CharacterCreate_Forward()
	if ( CharacterCreateFrame.state == "CLASSRACE" ) then
		CharacterCreateFrame.state = "CUSTOMIZATION"
		PlaySound("gsCharacterSelectionCreateNew");
		CharCreateClassFrame:Hide();
		CharCreateRaceFrame:Hide();
		-- CharCreateMoreInfoButton:Hide();
		CharCreateCustomizationFrame:Show();
		CharacterCreate_UpdateHairCustomization()
		--CharCreatePreviewFrame:Show();
		CharacterTemplateConfirmDialog:Hide();

		CharCreate_PrepPreviewModels();
		if ( CharacterCreateFrame.customizationType ) then
			CharCreate_ResetFeaturesDisplay();
		else
			CharCreateSelectCustomizationType(1);
		end

		CharCreateOkayButton:SetText(FINISH);
		CharacterCreateNameEdit:Show();

		CharCreateMaleButton:Hide()
		CharCreateFemaleButton:Hide()
		CustomizationBG:Show()
		CharCreateRandomizeButton:Show()
--		CustomizationLogoAlliance:Hide()
--		CustomizationTextAlliance:Hide()
--		CustomizationLogoHorde:Hide()
--		CustomizationTextHorde:Hide()
		--CharCreationNameCheck()

		-- Custom Part.

		-- set cam
		--[[if (CharacterCreateFrame.customizationType and CharacterCreateFrame.customizationType > 1) then
			SetFaceCustomizeCamera(true);
		else
			SetFaceCustomizeCamera(false);
		end]]
	else
		CharacterCreate_Finish();
	end
end

local CharacterCreate_Forward_BUp = CharacterCreate_Forward

local function CharacterCreate_Forward_New()
	-- set race specified model
	local race, fileString = GetNameForRace();

	GlueFrameFadeIn(CharacterCreateFrameFade, 0.5, function()
		SetBackgroundModel(CharacterCreate, string.upper(fileString));
		CharacterCreate_Forward_BUp()
		GlueFrameFadeOut(CharacterCreateFrameFade, 0.25)
	end);
end

CharacterCreate_Forward = CharacterCreate_Forward_New

function CharCreateCustomizationFrame_OnShow ()
	-- reset size/tex coord to default to facilitate switching between genders for Pandaren
	CharCreateCustomizationFrameBanner:SetSize(BANNER_DEFAULT_SIZE[1], BANNER_DEFAULT_SIZE[2]);
	CharCreateCustomizationFrameBanner:SetTexCoord(BANNER_DEFAULT_TEXTURE_COORDS[1], BANNER_DEFAULT_TEXTURE_COORDS[2], BANNER_DEFAULT_TEXTURE_COORDS[3], BANNER_DEFAULT_TEXTURE_COORDS[4]);

	-- check each button and hide it if there are no values select
	local resize = 0;
	local lastGood = 0;
	local isSkinVariantHair = false --GetSkinVariationIsHairColor(CharacterCreate.selectedRace);
	local isDefaultSet = 0;
	local checkedButton = 1;

	-- check if this was set, if not, default to 1
	if ( CharacterCreateFrame.customizationType == 0 or CharacterCreateFrame.customizationType == nil ) then
		CharacterCreateFrame.customizationType = 1;
	end
	for i=1, NUM_CHAR_CUSTOMIZATIONS, 1 do
		if ( ( --[[GetNumFeatureVariationsForType(i)]]5 <= 1 ) or ( isSkinVariantHair and i == CHAR_CUSTOMIZE_HAIR_COLOR ) ) then
			resize = resize + 1;
			_G["CharCreateCustomizationButton"..i]:Hide();
		else
			_G["CharCreateCustomizationButton"..i]:Show();
			--_G["CharCreateCustomizationButton"..i]:SetChecked(0); -- we will handle default selection
			-- this must be done since a selected button can 'disappear' when swapping genders
			if ( isDefaultSet == 0 and CharacterCreateFrame.customizationType == i) then
				isDefaultSet = 1;
				checkedButton = i;
			end
			-- set your anchor to be the last good, this currently means button 1 HAS to be shown
			if (i > 1) then
				_G["CharCreateCustomizationButton"..i]:SetPoint( "TOP",_G["CharCreateCustomizationButton"..lastGood]:GetName() , "BOTTOM");
			end
			lastGood = i;
		end
	end

	if (isDefaultSet == 0) then
		CharacterCreateFrame.customizationType = lastGood;
		checkedButton = lastGood;
	end
	--_G["CharCreateCustomizationButton"..checkedButton]:SetChecked(1);

	if (resize > 0) then
	-- we need to resize and remap the banner texture
		local buttonx, buttony = CharCreateCustomizationButton1:GetSize()
		local screenamount = resize*buttony;
		print(screenamount);
		local frameX, frameY = CharCreateCustomizationFrameBanner:GetSize();
		local pctShrink = .2*resize;
		local uvXDefaultSize = BANNER_DEFAULT_TEXTURE_COORDS[2] - BANNER_DEFAULT_TEXTURE_COORDS[1];
		local uvYDefaultSize = BANNER_DEFAULT_TEXTURE_COORDS[4] - BANNER_DEFAULT_TEXTURE_COORDS[3];
		local newYUV = pctShrink*uvYDefaultSize + BANNER_DEFAULT_TEXTURE_COORDS[3];
		-- end coord stay the same
		CharCreateCustomizationFrameBanner:SetTexCoord(BANNER_DEFAULT_TEXTURE_COORDS[1], BANNER_DEFAULT_TEXTURE_COORDS[2], newYUV, BANNER_DEFAULT_TEXTURE_COORDS[4]);
		print(pctShrink);
		CharCreateCustomizationFrameBanner:SetSize(frameX, frameY - screenamount);
		print(CharCreateCustomizationFrameBanner:GetTexCoord());
	end

	--CharCreateRandomizeButton:SetPoint("TOP", _G["CharCreateCustomizationButton"..lastGood]:GetName(), "BOTTOM", 0, 0);
end

function CharacterClass_OnClick(self, id)
	if( self:IsEnabled() ) then
		PlaySound("gsCharacterCreationClass");
		local _,_,currClass = GetSelectedClass();
		if ( currClass ~= id ) then
			SetSelectedClass(id);
			SetCharacterClass(id);
			SetCharacterRace(GetSelectedRace());
			CharacterChangeFixup();
		else
			self:SetChecked(1);
		end
	else
		self:SetChecked(0);
	end
end

function CharacterRace_OnClick(self, id, forceSelect)
	if( self:IsEnabled() ) then
		PlaySound("gsCharacterCreationClass");
		if ( GetSelectedRace() ~= id or forceSelect ) then
			SetSelectedRace(id);
			SetCharacterRace(id);
			SetCharacterGender(GetSelectedSex());
			SetCharacterCreateFacing(-15);
			CharacterCreateEnumerateClasses(GetAvailableClasses());
			local _,_,classIndex = GetSelectedClass();
			if ( PAID_SERVICE_TYPE ) then
				classIndex = PaidChange_GetCurrentClassIndex();
				SetSelectedClass(classIndex);	-- selecting a race would have changed class to default
			end
			SetCharacterClass(classIndex);

			-- Hair customization stuff
			CharacterCreate_UpdateHairCustomization();

			CharacterChangeFixup();
		else
			self:SetChecked(1);
		end
	else
		self:SetChecked(0);
	end
end

function SetCharacterGender(sex)
	local gender;

	if ( sex == SEX_MALE ) then
		CharCreateMaleButton:SetChecked(1);
		CharCreateFemaleButton:SetChecked(0);
	else
		CharCreateMaleButton:SetChecked(0);
		CharCreateFemaleButton:SetChecked(1);
	end
	SetSelectedSex(sex);

	-- Update race images to reflect gender
	CharacterCreateEnumerateRaces(GetAvailableRaces());
	CharacterCreateEnumerateClasses(GetAvailableClasses());
 	SetCharacterRace(GetSelectedRace());

	local _,_,classIndex = GetSelectedClass();
	if ( PAID_SERVICE_TYPE ) then
		classIndex = PaidChange_GetCurrentClassIndex();
		-- PandarenFactionButtons_SetTextures();
	end
	SetCharacterClass(classIndex);

	CharacterCreate_UpdateHairCustomization();
	CharacterChangeFixup();

	-- Update preview models if on customization step
	if ( CharCreatePreviewFrame:IsShown() ) then
		CharCreateCustomizationFrame_OnShow(); -- buttons may need to reset for dirty Pandarens
		CharCreate_PrepPreviewModels();
		CharCreate_ResetFeaturesDisplay();
	end
end

function CharacterCustomization_Left(id)
	PlaySound("gsCharacterCreationLook");
	CycleCharCustomization(id, -1);
	if (id > 1) then
		SetFaceCustomizeCamera(true)
	else
		SetFaceCustomizeCamera(false)
	end
end

function CharacterCustomization_Right(id)
	PlaySound("gsCharacterCreationLook");
	CycleCharCustomization(id, 1);
	if (id > 1) then
		SetFaceCustomizeCamera(true)
	else
		SetFaceCustomizeCamera(false)
	end
end

function CharacterCreate_GenerateRandomName(button)
	CharacterCreateNameEdit:SetText(GetRandomName());
end

function CharacterCreate_Randomize()
	PlaySound("gsCharacterCreationLook");
	RandomizeCharCustomization();
	CharCreate_ResetFeaturesDisplay();
end

function CharacterCreateRotateRight_OnUpdate(self)
	if ( self:GetButtonState() == "PUSHED" ) then
		SetCharacterCreateFacing(GetCharacterCreateFacing() + CHARACTER_FACING_INCREMENT);
		CharCreate_RotatePreviews();
	end
end

function CharacterCreateRotateLeft_OnUpdate(self)
	if ( self:GetButtonState() == "PUSHED" ) then
		SetCharacterCreateFacing(GetCharacterCreateFacing() - CHARACTER_FACING_INCREMENT);
		CharCreate_RotatePreviews();
	end
end

function SetButtonDesaturated(button, desaturated)
	if ( not button ) then
		return;
	end
	local icon = button:GetNormalTexture();
	if ( not icon ) then
		return;
	end

	icon:SetDesaturated(desaturated);
end

function GetFlavorText(tagname, sex)
	local primary, secondary;
	if ( sex == SEX_MALE ) then
		primary = "";
		secondary = "_FEMALE";
	else
		primary = "_FEMALE";
		secondary = "";
	end
	local text = _G[tagname..primary];
	if ( (text == nil) or (text == "") ) then
		text = _G[tagname..secondary];
	end
	return text;
end

function CharacterChangeFixup()
	if ( PAID_SERVICE_TYPE ) then
		-- no class changing as a paid service
		CharCreateClassFrame:SetAlpha(0.5);
		for i=1, MAX_CLASSES_PER_RACE, 1 do
			if (CharacterCreate.selectedClass ~= i) then
				local button = _G["CharCreateClassButton"..i];
				button:Disable();
				SetButtonDesaturated(button, true);
			end
		end

		local numAllowedRaces = 0;
		for i=1, MAX_RACES, 1 do
			local allow = false;
			if ( PAID_SERVICE_TYPE == PAID_FACTION_CHANGE ) then
				--[[local faction = PaidChange_GetCurrentFaction();
				if ( (i == PaidChange_GetCurrentRaceIndex()) or ((GetFactionForRace(i) ~= faction) and (IsRaceClassValid(i,CharacterCreate.selectedClass))) ) then
					allow = true;
				end]]
				for i=1,MAX_RACES do
					allow = true
				end
			elseif ( PAID_SERVICE_TYPE == PAID_RACE_CHANGE ) then
				--[[local faction = PaidChange_GetCurrentFaction();
				if ( (i == PaidChange_GetCurrentRaceIndex()) or ((GetFactionForRace(i) == faction or IsNeutralRace(i)) and (IsRaceClassValid(i,CharacterCreate.selectedClass))) ) then
					allow = true
				end]]
				local fact = CharacterCreate.selectedRace
				--local str = tostring(fact)..": "
				for i=1,MAX_RACES do
					if (fact < MAX_RACES and i < MAX_RACES) or (fact > (MAX_RACES-1) and i > (MAX_RACES-1)) then
						allow = true
						local button = _G["CharCreateRaceButton"..i];
						button:Enable();
						SetButtonDesaturated(button, false);
					else
						allow = false
						--str = str..tostring(i)..", "
						local button = _G["CharCreateRaceButton"..i];
						button:Disable();
						SetButtonDesaturated(button, true);
					end
				end
				--message(str)
			elseif ( PAID_SERVICE_TYPE == PAID_CHARACTER_CUSTOMIZATION ) then
				if ( i == CharacterCreate.selectedRace ) then
					allow = true
				end
			end
			if (not allow) then
				--local button = _G["CharCreateRaceButton"..i];
				--button:Disable();
				--SetButtonDesaturated(button, true);
			else
				numAllowedRaces = numAllowedRaces + 1;
			end
		end
		if ( numAllowedRaces > 1 ) then
			CharCreateRaceButtonsFrame:SetAlpha(1);
		else
			CharCreateRaceButtonsFrame:SetAlpha(0.5);
		end
	else
		CharCreateRaceButtonsFrame:SetAlpha(1);
		CharCreateClassFrame:SetAlpha(1);
	end

	-- sasha set class
    if CharacterCreate.selectedClass == 6 then
		SetSelectedClass(1) -- selecting a race would have changed class to default
		SetCharacterClass(1) -- hunter?
	end
end

function CharCreateSelectCustomizationType(newType)
	-- deselect previous type selection
	if ( CharacterCreateFrame.customizationType and CharacterCreateFrame.customizationType ~= newType ) then
		--_G["CharCreateCustomizationButton"..CharacterCreateFrame.customizationType]:SetChecked(0);
	end
	--_G["CharCreateCustomizationButton"..newType]:SetChecked(1);
	CharacterCreateFrame.customizationType = newType;
	CharCreate_ResetFeaturesDisplay();

	--[[if (newType > 1) then
		SetFaceCustomizeCamera(true);
	else
		SetFaceCustomizeCamera(false);
	end]]
end

function CharCreate_ResetFeaturesDisplay()
	--SetPreviewFramesFeature(CharacterCreateFrame.customizationType);
	-- set the previews scrollframe container height
	-- since the first and the last previews need to be in the center position when scrolled all the way
	-- to the top or to the bottom, there will be gaps of height equal to 2 previews on each side
	local numTotalButtons = 4--GetNumFeatureVariations() + 4;
	CharCreatePreviewFrame.scrollFrame.container:SetHeight(numTotalButtons * PREVIEW_FRAME_HEIGHT - PREVIEW_FRAME_Y_OFFSET);

	for _, previewFrame in pairs(CharCreatePreviewFrame.previews) do
		previewFrame.featureType = 0;
	end

	CharCreate_DisplayPreviewModels();
end

function CharCreate_PrepPreviewModels(reloadModels)
	local displayFrame = CharCreatePreviewFrame;

	-- clear models if rebuildPreviews got flagged
	local rebuildPreviews = displayFrame.rebuildPreviews;
	displayFrame.rebuildPreviews = nil;

	-- need to reload models class was swapped to or from DK
	local classSwap = false;
	local _, class = GetSelectedClass();
	--[[if ( class == "DEATHKNIGHT" or displayFrame.lastClass == "DEATHKNIGHT" ) and ( class ~= displayFrame.lastClass ) then
		classSwap = true;
	end]]

	-- always clear the featureType
	for index, previewFrame in pairs(displayFrame.previews) do
		previewFrame.featureType = 0;
		-- force model reload if class changed
		if ( classSwap ) then
			previewFrame.race = nil;
			previewFrame.gender = nil;
		end
		if ( rebuildPreviews ) then
			--SetPreviewFrame(previewFrame.model:GetName(), index);
		end
	end
end

function CharCreate_DisplayPreviewModels(selectionIndex)
	if ( not selectionIndex ) then
		selectionIndex = featureIndex--GetSelectedFeatureVariation();
	end

	local displayFrame = CharCreatePreviewFrame;
	local previews = displayFrame.previews;
	local numVariations = 8--GetNumFeatureVariations();
	local currentFeatureType = CharacterCreateFrame.customizationType;

	local race = GetSelectedRace();
	local gender = GetSelectedSex();

	-- selection index is the center preview
	-- there are 2 previews above and 2 below, and will pad it out to 1 more on each side, for a total of 7 previews to set up
	for index = selectionIndex - 3, selectionIndex + 3 do
		-- there is empty space both at the beginning and at end of the list, each gap the height of 2 previews
		if ( index > 0 and index <= numVariations ) then
			local previewFrame = previews[index];
			-- create button if we don't have it yet
			if ( not previewFrame ) then
				previewFrame = CreateFrame("BUTTON", "PreviewFrame"..index, displayFrame.scrollFrame.container, "CharCreatePreviewFrameTemplate");
				-- index + 1 because of 2 gaps at the top and -1 for the current preview
				previewFrame:SetPoint("TOPLEFT", PREVIEW_FRAME_X_OFFSET, (index + 1) * -PREVIEW_FRAME_HEIGHT + PREVIEW_FRAME_Y_OFFSET);
				previewFrame.button.index = index;
				previews[index] = previewFrame;
				--SetPreviewFrame(previewFrame.model:GetName(), index);
				-- no texture as of yet
				--previewFrame:SetNormalTexture("Interface\\Glues\\CharacterCreate\\UI-CharacterCreate-Classes")
			end
			-- load model if needed, may have been cleared by different race/gender selection
			if ( previewFrame.race ~= race or previewFrame.gender ~= gender ) then
				--SetPreviewFrameModel(index);
				previewFrame.race = race;
				previewFrame.gender = gender;
				-- apply settings
				local model = previewFrame.model;
				--model:SetCustomCamera(cameraID);
				local scale = 1--model:GetWorldScale();
				--model:SetCameraTarget(config.tx * scale, config.ty * scale, config.tz * scale);
				--model:SetCameraDistance(config.distance * scale);
				local cx, cy, cz = model:GetPosition();
				-- model:SetPosition(cx-15, cy, cz)
				--model:SetCameraPosition(cx, cy, config.cz * scale);
				previewFrame.model:SetLight(1, 0, 0, 0, 0, 1, 1.0, 1.0, 1.0);
			end
			-- need to reset the model if it was last used to preview a different feature
			if ( previewFrame.featureType ~= currentFeatureType ) then
				--ResetPreviewFrameModel(index);
				--ShowPreviewFrameVariation(index);
				previewFrame.featureType = currentFeatureType;
			end
			previewFrame:Show();
		else
			-- need to hide tail previews when going to features with fewer styles
			if ( previews[index] ) then
				previews[index]:Hide();
			end
		end
	end
	displayFrame.border.number:SetText("Option "..selectionIndex.."                     ");
	displayFrame.selectionIndex = selectionIndex;
	CharCreate_RotatePreviews();
	CharCreatePreviewFrame_UpdateStyleButtons();
	-- scroll to center the selection
	if ( not displayFrame.animating ) then
		displayFrame.scrollFrame:SetVerticalScroll((selectionIndex - 1) * PREVIEW_FRAME_HEIGHT);
	end
end


function CharCreate_RotatePreviews()
	if ( CharCreatePreviewFrame:IsShown() ) then
		local facing = ((GetCharacterCreateFacing())/ -180) * math.pi;
		local previews = CharCreatePreviewFrame.previews;
		--CharCreatePreviewFrame.selectionIndex = 0;
		for index = CharCreatePreviewFrame.selectionIndex - 3, CharCreatePreviewFrame.selectionIndex + 3 do
			local previewFrame = previews[index];
			if ( previewFrame ) then -- and previewFrame.model:HasCustomCamera()
				--previewFrame.model:SetCameraFacing(facing);
			end
		end
	end
end

function CharCreate_ChangeFeatureVariation(delta)
	local numVariations = 8--GetNumFeatureVariations();
	local startIndex = featureIndex--GetSelectedFeatureVariation();
	local endIndex = startIndex + delta;
	if ( endIndex < 1 or endIndex > numVariations ) then
		return;
	end
	PlaySound("gsCharacterCreationClass");
	featureIndex = endIndex
	CharCreatePreviewFrame_SelectFeatureVariation(endIndex);
end

function CharCreatePreviewFrameButton_OnClick(self)
	PlaySound("gsCharacterCreationClass");
	CharCreatePreviewFrame_SelectFeatureVariation(self.index);
end

function CharCreatePreviewFrame_SelectFeatureVariation(endIndex)
	local self = CharCreatePreviewFrame;
	if ( self.animating ) then
		if ( not self.queuedIndex ) then
			self.queuedIndex = endIndex;
		end
	else
		local startIndex = featureIndex--GetSelectedFeatureVariation();
		--SelectFeatureVariation(endIndex);
		for i=1,endIndex do
			CycleCharCustomization(FeatureType, 1);
		end
		CharCreatePreviewFrame_UpdateStyleButtons();
		featureIndex = endIndex
		CharCreatePreviewFrame_StartAnimating(startIndex, endIndex);
	end
end

function CharCreatePreviewFrame_StartAnimating(startIndex, endIndex)
	local self = CharCreatePreviewFrame;
	if ( self.animating ) then
		return;
	else
		self.startIndex = startIndex;
		self.currentIndex = startIndex;
		self.endIndex = endIndex;
		self.queuedIndex = nil;
		self.direction = 1;
		if ( self.startIndex > self.endIndex ) then
			self.direction = -1;
		end
		self.movedTotal = 0;
		self.moveUntilUpdate = PREVIEW_FRAME_HEIGHT;
		self.animating = true;
	end
end

function CharCreatePreviewFrame_StopAnimating()
	local self = CharCreatePreviewFrame;
	if ( self.animating ) then
		self.animating = false;
	end
end

local ANIMATION_SPEED = 5;
function CharCreatePreviewFrame_OnUpdate(self, elapsed)
	if ( self.animating ) then
		local moveIncrement = PREVIEW_FRAME_HEIGHT * elapsed * ANIMATION_SPEED;
		self.movedTotal = self.movedTotal + moveIncrement;
		self.scrollFrame:SetVerticalScroll((self.startIndex - 1) * PREVIEW_FRAME_HEIGHT + self.movedTotal * self.direction);
		self.moveUntilUpdate = self.moveUntilUpdate - moveIncrement;
		if ( self.moveUntilUpdate <= 0 ) then
			self.currentIndex = self.currentIndex + self.direction;
			self.moveUntilUpdate = PREVIEW_FRAME_HEIGHT;
			-- reset movedTotal to account for rounding errors
			self.movedTotal = abs(self.startIndex - self.currentIndex) * PREVIEW_FRAME_HEIGHT;
			CharCreate_DisplayPreviewModels(self.currentIndex);
		end
		if ( self.currentIndex == self.endIndex ) then
			self.animating = false;
			CharCreate_DisplayPreviewModels();
			if ( self.queuedIndex ) then
				local newIndex = self.queuedIndex;
				self.queuedIndex = nil;
				--SelectFeatureVariation(newIndex);
				featureIndex = newIndex
				CycleCharCustomization(FeatureType, featureIndex);
				CharCreatePreviewFrame_UpdateStyleButtons();
				CharCreatePreviewFrame_StartAnimating(self.endIndex, newIndex);
			end
		end
	end
end

function CharCreatePreviewFrame_UpdateStyleButtons()
	local selectionIndex = math.random(1,5)--GetSelectedFeatureVariation();
	local numVariations = 8--GetNumFeatureVariations();
	if ( selectionIndex == 1 ) then
		CharCreateStyleUpButton:Enable();
		CharCreateStyleUpButton.arrow:SetDesaturated(true);
	else
		CharCreateStyleUpButton:Enable();
		CharCreateStyleUpButton.arrow:SetDesaturated(false);
	end
	if ( selectionIndex == numVariations ) then
		CharCreateStyleDownButton:Disable();
		CharCreateStyleDownButton.arrow:SetDesaturated(true);
	else
		CharCreateStyleDownButton:Disable(true);
		CharCreateStyleDownButton.arrow:SetDesaturated(false);
	end
end

local TotalTime = 0;
local KeepScrolling = nil;
local TIME_TO_SCROLL = 0.5;
function CharacterCreateWhileMouseDown_OnMouseDown(direction)
	TIME_TO_SCROLL = 0.5;
	TotalTime = 0;
	KeepScrolling = direction;
end
function CharacterCreateWhileMouseDown_OnMouseUp()
	KeepScrolling = nil;
end
function CharacterCreateWhileMouseDown_Update(elapsed)
	if ( KeepScrolling ) then
		TotalTime = TotalTime + elapsed;
		if ( TotalTime >= TIME_TO_SCROLL ) then
			CharCreate_ChangeFeatureVariation(KeepScrolling);
			TIME_TO_SCROLL = 0.25;
			TotalTime = 0;
		end
	end
end

-- pandaren stuff related to faction change
function CharCreate_EnableNextButton(enabled)
	local button = CharCreateOkayButton;
	if enabled then
		button:Enable();
	else
		button:Disable();
	end
	button.Arrow:SetDesaturated(not enabled);
	--[[if enabled then
		button.TopGlow:Hide();
		button.BottomGlow:Hide();
	else
		button.TopGlow:Show();
		button.BottomGlow:Show();
	end]]--
end