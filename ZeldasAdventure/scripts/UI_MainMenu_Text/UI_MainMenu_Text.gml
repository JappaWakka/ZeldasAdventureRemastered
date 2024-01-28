function UI_MainMenu_Text(TextIndex)
{
	switch global.CurrentLanguage
	{
	case "en":
		if TextIndex = 3 {return "PLAY"}
		else if TextIndex = 4
		{
			switch ConfirmDelete
			{
				case 0:
					return "DELETE"
				case 1:
					return "YOU SURE?"
				case 2:
					return "DELETED"
			}
		}
		else if TextIndex = 5 {return "SETTINGS"}
		else if TextIndex = 6 {return "TUTORIAL"}
		else if TextIndex = 7 {return "Exit"}
		break;
		
	case "nl":
		if TextIndex = 3 {return "SPEEL"}
		else if TextIndex = 4
		{
			switch ConfirmDelete
			{
				case 0:
					return "WIS"
				case 1:
					return "ZEKER?"
				case 2:
					return "GEWIST"
			}
		}
		else if TextIndex = 5 {return "OPTIES"}
		else if TextIndex = 6 {return "UITLEG"}
		else if TextIndex = 7 {return "Stop"}
		break;
	}
}