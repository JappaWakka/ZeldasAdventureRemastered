function UI_MainMenu_Main_Text(TextIndex)
{
	switch global.CurrentLanguage
	{
	case "en":
		if TextIndex = 3 {return "PLAY"}
		else if TextIndex = 4 {return "DELETE"}
		else if TextIndex = 5 {return "SETTINGS"}
		else if TextIndex = 6 {return "TUTORIAL"}
		else if TextIndex = 7 {return "Exit"}
		break;
		
	case "nl":
		if TextIndex = 3 {return "SPEEL"}
		else if TextIndex = 4 {return "WIS"}
		else if TextIndex = 5 {return "OPTIES"}
		else if TextIndex = 6 {return "UITLEG"}
		else if TextIndex = 7 {return "Stop"}
		break;
	}
}