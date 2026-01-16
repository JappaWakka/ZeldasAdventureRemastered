function UI_SettingsMenu_Text(MenuIndex,TextIndex,OptionIndex = -1)
{
	switch MenuIndex
	{
		case 1: //Settings - Main
			if TextIndex = 0 {return Localize.UI.SettingsMenu.MainSubMenu.Game} //"Game"
			if TextIndex = 1 {return Localize.UI.SettingsMenu.MainSubMenu.AudioVolume} //"Audio Volume"
			if TextIndex = 2 {return Localize.UI.SettingsMenu.MainSubMenu.Controls} //"Controls"
			if TextIndex = 3 {return Localize.UI.SettingsMenu.MainSubMenu.ResetSettings} //"Reset Settings"
			if TextIndex = 4 {return Localize.UI.SettingsMenu.MainSubMenu.SaveSettings} //"Save Settings"
			if TextIndex = 5 {return Localize.UI.SettingsMenu.Back} //"Back"
			break;
		case 2: //Settings - Game
			if TextIndex = 0
			{
				if OptionIndex = -1 {return Localize.UI.SettingsMenu.GameSubMenu.WindowMode} //"Window Mode"
				if OptionIndex = 0  {return Localize.UI.SettingsMenu.GameSubMenu.Window} //"Window"
				if OptionIndex = 1  {return Localize.UI.SettingsMenu.GameSubMenu.Full} //"Full"
			}
			if TextIndex = 1
			{
				if OptionIndex = -1 {return Localize.UI.SettingsMenu.GameSubMenu.Resolution} //"Resolution"
				if OptionIndex = 0 {return "1x (384x240)"}
				if OptionIndex = 1 {return "2x (768x480)"}
				if OptionIndex = 2 {return "3x (1152x720)"}
				if OptionIndex = 3 {return "4x (1536x960)"}
				if OptionIndex = 4 {return "5x (1920x1200)"}
				if OptionIndex = 5 {return "6x (2304x1440)"}
			}
			if TextIndex = 2
			{
				if OptionIndex = -1 {return Localize.UI.SettingsMenu.GameSubMenu.RemasteredMode} //"Remastered Mode"
				if OptionIndex = 0 {return Localize.UI.SettingsMenu.GameSubMenu.ToggleOff} //"Off"
				if OptionIndex = 1 {return Localize.UI.SettingsMenu.GameSubMenu.ToggleOn} //"On"
			}
			if TextIndex = 3 
			{
				if OptionIndex = -1 {return Localize.UI.SettingsMenu.GameSubMenu.Subtitles} //"Subtitles"
				if OptionIndex = 0 {return Localize.UI.SettingsMenu.GameSubMenu.ToggleOff} //"Off"
				if OptionIndex = 1 {return Localize.UI.SettingsMenu.GameSubMenu.ToggleOn} //"On"
			}
			if TextIndex = 4
			{
				if OptionIndex = -1 {return Localize.UI.SettingsMenu.GameSubMenu.Language} //"Language"
				if OptionIndex > -1 {return Obj_LocalizationManager.AvailableLanguagesStruct.Languages[OptionIndex].LanguageNameLocal} //English
			}
			if TextIndex = 5
			{
				if OptionIndex = -1 {return Localize.UI.SettingsMenu.GameSubMenu.PixelRatio} //"Subtitles"
				if OptionIndex = 0 {return Localize.UI.SettingsMenu.GameSubMenu.PixelRatio_Original} //"Off"
				if OptionIndex = 1 {return Localize.UI.SettingsMenu.GameSubMenu.PixelRatio_CRT} //"On"
			}
			else if TextIndex = 6 {return Localize.UI.SettingsMenu.Back} //"Back"
			break;
		case 3: //Settings - Audio
			if TextIndex = 0 {return Localize.UI.SettingsMenu.AudioSubMenu.MasterVolume} //"Master"
			if TextIndex = 1 {return Localize.UI.SettingsMenu.AudioSubMenu.MusicVolume} //"Music"
			if TextIndex = 2 {return Localize.UI.SettingsMenu.AudioSubMenu.SoundFXVolume} //"SoundFX"
			if TextIndex = 3 {return Localize.UI.SettingsMenu.AudioSubMenu.DialogueVolume} //"Dialogue"
			if TextIndex = 4 {return Localize.UI.SettingsMenu.Back} //"Back"
			break;
		case 4: //Settings - Controls
			if TextIndex = 0
			{
				if OptionIndex = -1 {return Localize.UI.SettingsMenu.ControlsSubMenu.DeviceToConfig} //"Device to Config"
				if OptionIndex = 0 {return Localize.UI.SettingsMenu.ControlsSubMenu.Keys} //"Keys"
				if OptionIndex = 1 {return Localize.UI.SettingsMenu.ControlsSubMenu.Gamepad} //"Gamepad"
			}
			if TextIndex = 1 {return Localize.UI.SettingsMenu.ControlsSubMenu.BindingNames.Left} //"Left"
			if TextIndex = 2 {return Localize.UI.SettingsMenu.ControlsSubMenu.BindingNames.Right} //"Right"
			if TextIndex = 3 {return Localize.UI.SettingsMenu.ControlsSubMenu.BindingNames.Up} //"Up"
			if TextIndex = 4 {return Localize.UI.SettingsMenu.ControlsSubMenu.BindingNames.Down} //"Down"
			if TextIndex = 5 {return Localize.UI.SettingsMenu.ControlsSubMenu.BindingNames.Action1} //"Action 1/Accept"
			if TextIndex = 6 {return Localize.UI.SettingsMenu.ControlsSubMenu.BindingNames.Action2} //"Action 2/Cancel"
			if TextIndex = 7 {return Localize.UI.SettingsMenu.ControlsSubMenu.BindingNames.Inventory} //"Inventory"
			if TextIndex = 8 {return Localize.UI.SettingsMenu.ControlsSubMenu.BindingNames.Map} //"Map"
			if TextIndex = 9 {return Localize.UI.SettingsMenu.ControlsSubMenu.BindingNames.Menu} //"Menu"
			if TextIndex = 10 {return Localize.UI.SettingsMenu.Back} //"Back"
			if TextIndex = 11 {return Localize.UI.SettingsMenu.ControlsSubMenu.InputNames.Left} //"left"
			if TextIndex = 12 {return Localize.UI.SettingsMenu.ControlsSubMenu.InputNames.Right} //"right"
			if TextIndex = 13 {return Localize.UI.SettingsMenu.ControlsSubMenu.InputNames.Up} //"up"
			if TextIndex = 14 {return Localize.UI.SettingsMenu.ControlsSubMenu.InputNames.Down} //"down"
			if TextIndex = 15 {return Localize.UI.SettingsMenu.ControlsSubMenu.InputNames.StickClick} //"click"
			if TextIndex = 16 {return Localize.UI.SettingsMenu.ControlsSubMenu.InputNames.Escape} //"escape"
			if TextIndex = 17 {return Localize.UI.SettingsMenu.ControlsSubMenu.InputNames.Enter} //"enter"
			if TextIndex = 18 {return Localize.UI.SettingsMenu.ControlsSubMenu.InputNames.Arrow} //"arrow"
			break;
	}
}

function UI_SettingsMenu_Tooltip(MenuIndex,TextIndex)
{		
	switch MenuIndex
	{
		case 2: //Settings - Game
		if TextIndex = 2
		{
			return Localize.UI.SettingsMenu.GameSubMenu.RemasteredModeHint //"Action 1 = Use Weapon, Action 2 = Use Treasure, Restored cut content, Action Button 2 replaces Ruby item etc."
		}
		break
	}
	return ""
	
}