function UI_Inventory_Text(TextIndex)
{
	switch global.CurrentLanguage
	{
	case "en":
		if TextIndex = 0 {return "TREASURES"}
		else if TextIndex = 1 {return "WEAPONS"}
		else if TextIndex = 2 {return "Map"}
		else if TextIndex = 3 {return "Exit"}
		break;
		
	case "nl":
		if TextIndex = 0 {return "SCHATTEN"}
		else if TextIndex = 1 {return "WAPENS"}
		else if TextIndex = 2 {return "Kaart"}
		else if TextIndex = 3 {return "Stop"}
		break;
	}
}