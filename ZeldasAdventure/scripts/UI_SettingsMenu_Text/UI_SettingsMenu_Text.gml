function UI_SettingsMenu_Text(MenuIndex,TextIndex,OptionIndex = -1)
{
	switch global.CurrentLanguage
	{
	case "en":
		switch MenuIndex
		{
			case 1: //Settings - Main
				if TextIndex = 0	  {return "Game"}
				else if TextIndex = 1 {return "Audio Volume"}
				else if TextIndex = 2 {return "Controls"}
				else if TextIndex = 3 {return "Reset Controls"}
				else if TextIndex = 4 {return "Save Settings"}
				else if TextIndex = 5 {return "Back"}
				break;
			case 2: //Settings - Game
				if TextIndex = 0
				{
					if OptionIndex = -1 {return "Window Mode"}
					if OptionIndex = 0 {return "Window"}
					if OptionIndex = 1 {return "Full"}
				}
				else if TextIndex = 1 {return "Resolution"}
				else if TextIndex = 2
				{
					if OptionIndex = -1 {return "Remastered Mode"}
					if OptionIndex = 0 {return "Off"}
					if OptionIndex = 1 {return "On"}
				}
				else if TextIndex = 3 
				{
					if OptionIndex = -1 {return "Subtitles"}
					if OptionIndex = 0 {return "Off"}
					if OptionIndex = 1 {return "On"}
				}
				else if TextIndex = 4
				{
					if OptionIndex = -1 {return "Language"}
					if OptionIndex = 0 {return "English"}
					if OptionIndex = 1 {return "Nederlands"}
				}
				else if TextIndex = 5 {return "Back"}
				break;
			case 3: //Settings - Audio
				if TextIndex = 0	  {return "Master"}
				else if TextIndex = 1 {return "Music"}
				else if TextIndex = 2 {return "SoundFX"}
				else if TextIndex = 3 {return "Dialogue"}
				else if TextIndex = 4 {return "Back"}
				break;
			case 4: //Settings - Controls
				if TextIndex = 0
				{
					if OptionIndex = -1 {return "Device to Config"}
					if OptionIndex = 0 {return "Keys"}
					if OptionIndex = 1 {return "Gamepad"}
				}
				else if TextIndex = 1 {return "Left"}
				else if TextIndex = 2 {return "Right"}
				else if TextIndex = 3 {return "Up"}
				else if TextIndex = 4 {return "Down"}
				else if TextIndex = 5 {return "Action"}
				else if TextIndex = 6 {return "Special"}
				else if TextIndex = 7 {return "Inventory"}
				else if TextIndex = 8 {return "Menu"}
				else if TextIndex = 9 {return "Back"}
		}
	break;
		
	case "nl":
		switch MenuIndex
		{
			case 1: //Settings - Main
				if TextIndex = 0	  {return "Spel"}
				else if TextIndex = 1 {return "Geluidsvolume"}
				else if TextIndex = 2 {return "Besturing"}
				else if TextIndex = 3 {return "Herstel Besturing"}
				else if TextIndex = 4 {return "Opties Opslaan"}
				else if TextIndex = 5 {return "Terug"}
				break;
			case 2: //Settings - Game
				if TextIndex = 0
				{
					if OptionIndex = -1 {return "Schermmodus"}
					if OptionIndex = 0 {return "Venster"}
					if OptionIndex = 1 {return "Volledig"}
				}
				else if TextIndex = 1 {return "Resolutie"}
				else if TextIndex = 2
				{
					if OptionIndex = -1 {return "Remaster-Modus"}
					if OptionIndex = 0 {return "Uit"}
					if OptionIndex = 1 {return "Aan"}
				}
				else if TextIndex = 3 
				{
					if OptionIndex = -1 {return "Ondertiteling"}
					if OptionIndex = 0 {return "Uit"}
					if OptionIndex = 1 {return "Aan"}
				}
				else if TextIndex = 4
				{
					if OptionIndex = -1 {return "Taal"}
					if OptionIndex = 0 {return "English"}
					if OptionIndex = 1 {return "Nederlands"}
				}
				else if TextIndex = 5 {return "Terug"}
				break;
			case 3: //Settings - Audio
				if TextIndex = 0	  {return "Hoofdvolume"}
				else if TextIndex = 1 {return "Muziek"}
				else if TextIndex = 2 {return "Geluiden"}
				else if TextIndex = 3 {return "Dialoog"}
				else if TextIndex = 4 {return "Terug"}
				break;
			case 4: //Settings - Controls
				if TextIndex = 0
				{
					if OptionIndex = -1 {return "Instelapparaat"}
					if OptionIndex = 0 {return "Toetsen"}
					if OptionIndex = 1 {return "Gamepad"}
				}
				else if TextIndex = 1 {return "Links"}
				else if TextIndex = 2 {return "Rechts"}
				else if TextIndex = 3 {return "Op"}
				else if TextIndex = 4 {return "Neer"}
				else if TextIndex = 5 {return "Actie"}
				else if TextIndex = 6 {return "Speciaal"}
				else if TextIndex = 7 {return "Inventaris"}
				else if TextIndex = 8 {return "Menu"}
				else if TextIndex = 9 {return "Terug"}
		}
	}
}