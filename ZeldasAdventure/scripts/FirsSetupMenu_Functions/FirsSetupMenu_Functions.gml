function FirstSetupMenu_Confirm()
{
	Settings_Save(true)
	HasConfirmed = true
	global.FadeProgress = 0;
}

function FirstSetupMenu_TitleText(MenuIndex)
{		
	switch MenuIndex
	{
		case SetupMenu_Page.SettingsSetup:
			return Localize.UI.FirstSetupMenu.PreferencesInstructions //"Please set your desired preferences."
		case SetupMenu_Page.RemasteredModeSetup:
			return Localize.UI.FirstSetupMenu.RemasteredModeQuestion //"Do you want to enable Remastered Mode?"
	}
	return ""
	
}
function FirstSetupMenu_RemasteredModeText(MenuIndex)
{		
	switch MenuIndex
	{
		case SetupMenu_Page.RemasteredModeSetup:
			return Localize.UI.FirstSetupMenu.RemasteredModeFeatureList //"• Separate Item Buttons: Action 1 = Use Weapon, Action 2 = Use Treasure.\n• Action Button 2 functions as the Ruby item when near something buyable.\n• Restored cut content like dialogue and additional NPC animations.\n• You no longer deal melee damage when using a different Weapon than the Wand.\n• Enemies can't reach the edge of the screen for about 1,5 seconds upon entering.",
	}
	return ""
	
}
function FirstSetupMenu_SettingsText(MenuIndex,TextIndex,OptionIndex = -1)
{
	switch MenuIndex
	{
		case SetupMenu_Page.SettingsSetup:
			
			if TextIndex = 0
			{
				if OptionIndex = -1 {return Localize.UI.SettingsMenu.GameSubMenu.WindowMode} //"Window Mode"
				if OptionIndex = 0  {return Localize.UI.SettingsMenu.GameSubMenu.Window} //"Window"
				if OptionIndex = 1  {return Localize.UI.SettingsMenu.GameSubMenu.Full} //"Full"
			}
			if TextIndex = 1
			{
				if OptionIndex = -1 {return Localize.UI.SettingsMenu.GameSubMenu.AspectRatio} //"Aspect Ratio"
				if OptionIndex = 0 {return "NTSC"}
				if OptionIndex = 1 {return "PAL"}
			}
			if TextIndex = 2
			{
				if OptionIndex = -1 {return Localize.UI.SettingsMenu.GameSubMenu.Resolution} //"Resolution"
				if OptionIndex = 0 {return string_concat("1x (384x", (240 + global.AspectRatio), ")")}
				if OptionIndex = 1 {return string_concat("2x (768x", (240 + global.AspectRatio) * 2, ")")}
				if OptionIndex = 2 {return string_concat("3x (1152x", (240 + global.AspectRatio) * 3, ")")}
				if OptionIndex = 3 {return string_concat("4x (1536x", (240 + global.AspectRatio) * 4, ")")}
				if OptionIndex = 4 {return string_concat("5x (1920x", (240 + global.AspectRatio) * 5, ")")}
				if OptionIndex = 5 {return string_concat("6x (2304x", (240 + global.AspectRatio) * 6, ")")}
			}
			if TextIndex = 3
			{
				if OptionIndex = -1 {return Localize.UI.SettingsMenu.GameSubMenu.Language} //"Language"
				if OptionIndex > -1 {return Obj_LocalizationManager.AvailableLanguagesStruct.Languages[OptionIndex].LanguageNameLocal} //English
			}
			if TextIndex = 4
			{
				if OptionIndex = -1 {return Localize.UI.SettingsMenu.GameSubMenu.Subtitles} //"Subtitles"
				if OptionIndex = 0 {return Localize.UI.SettingsMenu.GameSubMenu.ToggleOff} //"Off"
				if OptionIndex = 1 {return Localize.UI.SettingsMenu.GameSubMenu.ToggleOn} //"On"
			}
			else if TextIndex = 5 {return Localize.UI.FirstSetupMenu.Confirm} //"Confirm"
			break;
		case SetupMenu_Page.RemasteredModeSetup:
			if TextIndex = 0
			{
				if OptionIndex = -1 {return Localize.UI.FirstSetupMenu.CurrentMode} //"Current Choice"
				if OptionIndex = 0 {return Localize.UI.FirstSetupMenu.OptionClassicMode} //"Classic Mode"
				if OptionIndex = 1 {return Localize.UI.FirstSetupMenu.OptionRemasteredMode} //"Remastered Mode"
			}
			if TextIndex = 1 {return Localize.UI.FirstSetupMenu.Confirm} //"Confirm"
			break;
	}
}