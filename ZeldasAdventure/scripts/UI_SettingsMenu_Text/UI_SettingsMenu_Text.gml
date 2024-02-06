function UI_SettingsMenu_Text(MenuIndex,TextIndex,OptionIndex = -1)
{
	switch global.CurrentLanguage
	{
	case "en":
		switch MenuIndex
		{
			case 1: //Settings - Main
				if TextIndex = 0 {return "Game"}
				if TextIndex = 1 {return "Audio Volume"}
				if TextIndex = 2 {return "Controls"}
				if TextIndex = 3 {return "Reset Controls"}
				if TextIndex = 4 {return "Save Settings"}
				if TextIndex = 5 {return "Back"}
				break;
			case 2: //Settings - Game
				if TextIndex = 0
				{
					if OptionIndex = -1 {return "Window Mode"}
					if OptionIndex = 0 {return "Window"}
					if OptionIndex = 1 {return "Full"}
				}
				if TextIndex = 1
				{
					if OptionIndex = -1 {return "Resolution"}
					if OptionIndex = 0 {return "1x (384x240)"}
					if OptionIndex = 1 {return "2x (768x480)"}
					if OptionIndex = 2 {return "3x (1152x720)"}
					if OptionIndex = 3 {return "4x (1536x960)"}
					if OptionIndex = 4 {return "5x (1920x1200)"}
					if OptionIndex = 5 {return "6x (2304x1440)"}
				}
				if TextIndex = 2
				{
					if OptionIndex = -1 {return "Remastered Mode"}
					if OptionIndex = 0 {return "Off"}
					if OptionIndex = 1 {return "On"}
				}
				if TextIndex = 3 
				{
					if OptionIndex = -1 {return "Subtitles"}
					if OptionIndex = 0 {return "Off"}
					if OptionIndex = 1 {return "On"}
				}
				if TextIndex = 4
				{
					if OptionIndex = -1 {return "Language"}
					if OptionIndex = 0 {return "English"}
					if OptionIndex = 1 {return "Nederlands"}
				}
				else if TextIndex = 5 {return "Back"}
				break;
			case 3: //Settings - Audio
				if TextIndex = 0 {return "Master"}
				if TextIndex = 1 {return "Music"}
				if TextIndex = 2 {return "SoundFX"}
				if TextIndex = 3 {return "Dialogue"}
				if TextIndex = 4 {return "Back"}
				break;
			case 4: //Settings - Controls
				if TextIndex = 0
				{
					if OptionIndex = -1 {return "Device to Config"}
					if OptionIndex = 0 {return "Keys"}
					if OptionIndex = 1 {return "Gamepad"}
				}
				if TextIndex = 1 {return "Left"}
				if TextIndex = 2 {return "Right"}
				if TextIndex = 3 {return "Up"}
				if TextIndex = 4 {return "Down"}
				if TextIndex = 5 {return "Action 1"}
				if TextIndex = 6 {return "Action 2"}
				if TextIndex = 7 {return "Inventory"}
				if TextIndex = 8 {return "Menu"}
				if TextIndex = 9 {return "Back"}
				break;
		}
	break;
		
	case "nl":
		switch MenuIndex
		{
			case 1: //Settings - Main
				if TextIndex = 0	  {return "Spel"}
				if TextIndex = 1 {return "Geluidsvolume"}
				if TextIndex = 2 {return "Besturing"}
				if TextIndex = 3 {return "Herstel Besturing"}
				if TextIndex = 4 {return "Opties Opslaan"}
				if TextIndex = 5 {return "Terug"}
				break;
			case 2: //Settings - Game
				if TextIndex = 0
				{
					if OptionIndex = -1 {return "Schermmodus"}
					if OptionIndex = 0 {return "Venster"}
					if OptionIndex = 1 {return "Volledig"}
				}
				if TextIndex = 1
				{
					if OptionIndex = -1 {return "Resolutie"}
					if OptionIndex = 0 {return "1x (384x240)"}
					if OptionIndex = 1 {return "2x (768x480)"}
					if OptionIndex = 2 {return "3x (1152x720)"}
					if OptionIndex = 3 {return "4x (1536x960)"}
					if OptionIndex = 4 {return "5x (1920x1200)"}
					if OptionIndex = 5 {return "6x (2304x1440)"}
				}
				if TextIndex = 2
				{
					if OptionIndex = -1 {return "Remaster-Modus"}
					if OptionIndex = 0 {return "Uit"}
					if OptionIndex = 1 {return "Aan"}
				}
				if TextIndex = 3 
				{
					if OptionIndex = -1 {return "Ondertiteling"}
					if OptionIndex = 0 {return "Uit"}
					if OptionIndex = 1 {return "Aan"}
				}
				if TextIndex = 4
				{
					if OptionIndex = -1 {return "Taal"}
					if OptionIndex = 0 {return "English"}
					if OptionIndex = 1 {return "Nederlands"}
				}
				if TextIndex = 5 {return "Terug"}
				break;
			case 3: //Settings - Audio
				if TextIndex = 0 {return "Hoofdvolume"}
				if TextIndex = 1 {return "Muziek"}
				if TextIndex = 2 {return "Geluiden"}
				if TextIndex = 3 {return "Dialoog"}
				if TextIndex = 4 {return "Terug"}
				break;
			case 4: //Settings - Controls
				if TextIndex = 0
				{
					if OptionIndex = -1 {return "Instelapparaat"}
					if OptionIndex = 0 {return "Toetsen"}
					if OptionIndex = 1 {return "Gamepad"}
				}
				if TextIndex = 1 {return "Links"}
				if TextIndex = 2 {return "Rechts"}
				if TextIndex = 3 {return "Op"}
				if TextIndex = 4 {return "Neer"}
				if TextIndex = 5 {return "Actie 1"}
				if TextIndex = 6 {return "Actie 2"}
				if TextIndex = 7 {return "Inventaris"}
				if TextIndex = 8 {return "Menu"}
				if TextIndex = 9 {return "Terug"}
				break;
		}
		break;
	}
}